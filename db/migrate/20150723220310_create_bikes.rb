class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :color
      t.string :price
      t.string :image_url
      t.string :size

      t.timestamps null: false
    end
  end
end
