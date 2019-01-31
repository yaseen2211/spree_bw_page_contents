module Spree
  module Admin
    class PageContentsController < ResourceController
      def index
      	params[:q] = {} if params[:q].blank?
      	@search = Spree::PageContent.with_translations(I18n.locale).ransack(params[:q])
      	@page_contents = @search.result.page(params[:page]).per(10)
      end

      def update
				page_content = Spree::PageContent.find(params[:id])
				page_content.update update_option_value_attribute
				redirect_to spree.edit_admin_page_content_path(page_content)
			end

			private
				def update_option_value_attribute
					params.require(:page_content).permit!
				end
    end
  end
end
