class CreateSpreePageContents < ActiveRecord::Migration[4.2]
  def up
    create_table :spree_page_contents do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.timestamps
    end
  end

  def down
    drop_table :spree_page_contents
  end
end
