json.array!(@songs) do |song|
  json.extract! song, :id, :title, :artist, :word, :lyrics, :used, :winner, :youtube_id, :youtube_start_time
  json.url song_url(song, format: :json)
end
