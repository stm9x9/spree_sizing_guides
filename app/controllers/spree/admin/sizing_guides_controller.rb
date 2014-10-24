module Spree
  module Admin
    class SizingGuidesController < ResourceController

      before_filter :load_data, only: :edit

      def new
        @sizing_guide = SizingGuide.new
        @sizing_guide.build_sizing_guide_image
      end

      def edit

      end

      private

      def permitted_sizing_guides_attributes
        [:name, :description, :permalink, sizing_guide_image: [:attachment] ]
      end

      def load_data
        @sizing_guide = SizingGuide.friendly.find(params[:id])
      end

    end
  end
end