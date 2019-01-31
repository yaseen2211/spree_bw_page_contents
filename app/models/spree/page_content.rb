module Spree
  class PageContent < Spree::Base
  	translates :title, :description,:slug, fallbacks_for_empty_translations: true
  	include SpreeGlobalize::Translatable
  	
  	scope :from_slug, -> (lang,slug) {with_translations(lang).where('spree_page_content_translations.slug'  => slug) }
  end
end
