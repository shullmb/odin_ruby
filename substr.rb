#Substrings

def substrings( str, dictionary)
		found_it = {}										#initialize empty hash
		str.downcase!
		dictionary.each do |substring|				#iterate over each word in the array
			substring.downcase!
			str.scan(substring) do |match|			#check the string to see if word is in the string
				if found_it.has_key?(match)
					found_it[match] += 1				#if the word/key is already in the hash, add 1 to count
				else
					found_it[match] = 1				#if the word is not already in the hash, make it a key => 1
				end
			end
		end
	p  found_it
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

string = "below"
string_2 ="Howdy partner, sit down! How's it going?"

substrings(string, dictionary)

substrings(string_2, dictionary)