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
	newlist = Hash.new
	song.each_with_index do |name, index|
		newlist[index] = name
	end
	newlist
end	

newlist_univ = list(songs)
print newlist_univ


#def list(song)
#	newlist = []
#	song.each_with_index do |name, index|
#		newlist << "#{index} - #{name}"
#	end
#	newlist
#end	
#
#puts list(songs)