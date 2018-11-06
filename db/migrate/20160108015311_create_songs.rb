class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist_sort_order
      t.string :song_sort_order
      t.boolean :allow_create_artists
      t.boolean :allow_create_songs

      t.timestamps null: false
    end
  end
end

expect(p.artist_sort_order.class).to eq String
    expect(p.song_sort_order.class).to eq String
    expect(p.allow_create_artists).to eq false
    expect(p.allow_create_songs).to eq true