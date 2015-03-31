class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category_id
      t.string :title
      t.text :text
      t.decimal :price
      t.string :image

      t.timestamps null: false
    end
  end
end
