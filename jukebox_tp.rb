require 'highline/import'

ft = HighLine::ColorScheme.new do |cs|
        cs[:headline]        = [ :bold, :yellow, :on_black ]
        cs[:horizontal_line] = [ :bold, :white, :on_blue]
        cs[:even_row]        = [ :green ]
        cs[:odd_row]         = [ :magenta ]
     end

# Assign that color scheme to HighLine...
HighLine.color_scheme = ft

# ...and use it.
say("<%= color('Headline', :headline) %>")
say("<%= color('-'*20, :horizontal_line) %>")

# Setup a toggle for rows.
i = true
("A".."D").each do |row|
    row_color = i ? :even_row : :odd_row
    say("<%= color('#{row}', '#{row_color}') %>")
    i = !i
end

directory = 
  ["For help, type HELP", 
   "To play a song, type song number", 
   "To list the songs, type LIST", 
   "To exit, type BYE"]

songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
] 

def list(song)
	newlist = []
	song.each_with_index do |name, index|
	newlist << "#{index+1} - #{name}"
	end
	newlist
end	

newlist_univ = list(songs)

def say_song_name(songs, number)
	puts "Now playing #{songs[number-1]}"
end

puts "Hi, I'm a jukebox! Here's what you can do:"
puts directory 
puts "What would you like to do?"
	command = gets.chomp.downcase 


while command != "bye"
	if command.match /[0-7]/
		number = command.to_i
		say_song_name(songs, number)
	else
		case command 
		when "help"
			puts directory
		when "list"
			puts newlist_univ
		else
			puts "It seems that command doesn't work, here's the help menu again:"
			puts directory
		end
	end
	puts "What would you like to do?"
	command = gets.chomp 
end

puts "bye!"