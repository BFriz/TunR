# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.delete_all
Album.delete_all
Genre.delete_all
AlbumSong.delete_all



g1 = Genre.create(name: 'Biblical')
g2 = Genre.create(name: 'Transcending')
g3 = Genre.create(name: 'Ben-like')


a1 = g1.albums.create(name: 'The only Song')
a2 = g1.albums.create(name: 'wicked tune')
a3 = g3.albums.create(name: 'one-hit wonder')
a4 = g2.albums.create(name: 'Underwear')


s1 = Song.create(name: 'Chumbawamba - Tubthumping', price: 15)
s2 = Song.create(name: 'Marcy and the Playground - Sex and Candy', price: 10)
s3 = Song.create(name: 'Blood Hound Gang - The Bad Touch', price: 12)
s4 = Song.create(name: 'Marky Mark - Wildside', price: 15)

a1.album_songs.create(song_id: s1.id)
a2.album_songs.create(song_id: s3.id)
a3.album_songs.create(song_id: s2.id)
a4.album_songs.create(song_id: s4.id)



