require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
   - help : displays this help message
   - list : displays a list of songs you can play
   - play : lets you choose a song to play
   - exit : exits this program"
end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
   my_songs do |song, path|
    binding.pry
  end  
end

def run(songs)
  #this method is the same as in jukebox.rb
  help
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(songs)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end
