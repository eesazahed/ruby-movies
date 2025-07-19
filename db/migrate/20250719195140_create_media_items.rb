class CreateMediaItems < ActiveRecord::Migration[8.0]
  def change
    create_table :media_items do |t|
      t.string :category
      t.integer :release_year
      t.string :title
      t.text :description
      t.integer :rating
      t.string :watchlist

      t.timestamps
    end
  end
end
