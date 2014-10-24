module Spree
  class SizingGuide < ActiveRecord::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    has_one :sizing_guide_image, -> { order(:position) }, as: :viewable, dependent: :destroy, class_name: "Spree::SizingGuideImage"
    accepts_nested_attributes_for :sizing_guide_image
    acts_as_paranoid

    validates :name, :description, :slug, presence: true
    validates :slug, :name, uniqueness: true
    validates :slug, length: { minimum: 3 }
    validates :sizing_guide_image, presence: true

    after_destroy :punch_slug

    def to_param
      slug
    end

    private

    def punch_slug
      update_column :slug, "#{Time.now.to_i}_#{slug}" # punch slug with date prefix to allow reuse of original
    end

  end
end
