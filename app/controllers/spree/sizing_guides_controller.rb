module Spree
  class SizingGuidesController < Spree::StoreController
    respond_to :html
    before_filter :load_sizing_guide, only: :show

    private

    def load_sizing_guide
      @sizing_guide = Spree::SizingGuide.friendly.find(params[:id])
    end

  end
end
