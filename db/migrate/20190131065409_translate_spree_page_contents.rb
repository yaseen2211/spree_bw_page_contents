class TranslateSpreePageContents < ActiveRecord::Migration[5.2]

	def  up 
	  Spree::PageContent.create_translation_table! :title =>  :string ,  :description => :text, :slug => :string 
	end

	def  down 
	  Spree::PageContent.drop_translation_table! 
	end
	
end





	 