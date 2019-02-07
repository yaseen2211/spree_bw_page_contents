module Spree
  class PageContent < Spree::Base
  	translates :title, :description,:slug, fallbacks_for_empty_translations: true
  	include SpreeGlobalize::Translatable
  	
  	scope :from_gen_slug, -> (lang,slug)      {with_translations(lang).where("spree_page_content_translations.slug LIKE ?",  "%#{slug}%")}
  	scope :spec_slug, ->     (slug){select{|s|s.slug == slug}}
  end
end


