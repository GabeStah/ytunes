class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :word
      t.text :lyrics
      t.boolean :used
      t.boolean :winner
      t.string :youtube_id
      t.integer :youtube_start_time

      t.timestamps null: false
    end
  end
end
