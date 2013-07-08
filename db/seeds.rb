# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    files = Dir.entries("db/data").delete_if{|str| str[0] == "."}

    files.each do |song_file|

      artist = song_file.split(" - ")[0].split("/").first.strip
      song = song_file.split(" - ")[1].split("[").first.strip
      genre = song_file.split(" - ")[1].split("[").last.split("]").first.strip

      new_artist = Artist.find_by_name(artist) || Artist.create(name: artist)

      new_genre = Genre.find_by_name(genre) || Genre.create(name: genre)

      new_song = Song.create(name: song, artist_id: new_artist.id, genre_id: new_genre.id)

    end


