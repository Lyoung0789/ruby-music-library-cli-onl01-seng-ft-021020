require "pry"
class MusicLibraryController

  def initialize(path = './db/mp3s')
    @new_object = MusicImporter.new(path)
    @new_object.import
  end 
  
  def call 
    answer = ""
    while answer != "exit" do 
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      answer = gets.chomp
    end 
  end 
  
  def list_songs
    # binding.pry
    Song.all.sort {|song_a,song_b| song_a.name<=>song_b.name}.each_with_index {|i, j| puts "#{j+1}. #{i.artist.name} - #{i.name} - #{i.genre.name}"}
    # binding.pry
 

    
 
    
  end 


end