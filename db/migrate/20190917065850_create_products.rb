class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :title,      null: false
      t.text    :image_url,  null: false
      t.string  :shopkeeper, null: false
      t.text    :detail
      t.integer :price,      null: false
      t.timestamps
    end
  end
end
