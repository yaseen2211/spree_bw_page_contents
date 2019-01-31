module Spree
  module Admin
    class PageContentsController < ResourceController
      def index
        @page_contents = Spree::PageContent.page(params[:page] || 1).per(50)
      end
    end
  end
end
