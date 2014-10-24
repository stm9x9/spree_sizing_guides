module Spree
  module Admin
    class SizingGuidesController < ResourceController

      def new
        @sizing_guide = SizingGuide.new
        @sizing_guide.build_sizing_guide_image
      end

      private

      def permitted_sizing_guides_attributes
        [:name, :description, :permalink, sizing_guide_image: [:attachment] ]
      end

      def find_resource
        if parent_data.present?
          parent.send(controller_name).friendly.find(params[:id])
        else
          model_class.friendly.find(params[:id])
        end
      end
    end
  end
end