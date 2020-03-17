class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|

      t.string :singer
      t.string :album
      t.string :album_image_id
      t.text :introduction
      t.integer :user_id
      t.float :rate
      t.string :url
      t.integer :genre_id


      t.timestamps
    end
  end
end
