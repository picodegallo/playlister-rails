class Genre < ActiveRecord::Base
  attr_accessible :artist_id, :name, :song_id
  has_many :songs
  has_many :artists, through: :songs
end
