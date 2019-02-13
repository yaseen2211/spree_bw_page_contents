class AddImageToPageContent < ActiveRecord::Migration[5.2]
  def change
  	add_column :spree_page_contents, :image, :string
  end
end
