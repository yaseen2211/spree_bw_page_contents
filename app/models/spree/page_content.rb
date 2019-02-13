module Spree
  class PageContent < Spree::Base

	has_one_attached :image # one-to-one
  	translates :title, :description,:slug, fallbacks_for_empty_translations: true
  	include SpreeGlobalize::Translatable
  	
  	scope :from_gen_slug, -> (slug)      {with_translations('en').where("spree_page_content_translations.slug LIKE ?",  "%#{slug}%")}
  	scope :spec_slug, ->     (slug){select{|s|s.slug == slug}}
  end
end


