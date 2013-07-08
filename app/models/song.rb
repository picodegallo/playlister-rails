class Song < ActiveRecord::Base
  attr_accessible :artist_id, :genre_id, :name
  belongs_to :artist
  belongs_to :genre
end
