#Bubble Sort

def bubble_sort(arr)
	iterations = 0
	loop do																								#loop through enumerable until completely sorted
		bubbled = false																				#
		p arr																								#print starting enumerable
		(arr.length - 1).times do | index |														#each pass will bubble a greater value toward end of enumerable  
			if arr[index] > arr[index + 1] 														#
				arr[index], arr[index + 1] = arr[ index +1], arr[index]					# yay multi assignment!
				bubbled = true																		#
				iterations +=1																		# count the iterations until this bitch is sorted (you know, for kids)
				p arr																						# watch it bubble
			end																							#
		end																								#
		break if not bubbled																		#
	end																									#
	puts "bubbled #{iterations} times for an array of #{arr.length} numbers"	# bubble sorted
end


#OUTPUT
# input = [4,3,78,2,0,2]

# bubble_sort(input)

# [4, 3, 78, 2, 0, 2]
# [3, 4, 78, 2, 0, 2]
# [3, 4, 2, 78, 0, 2]
# [3, 4, 2, 0, 78, 2]
# [3, 4, 2, 0, 2, 78]
# [3, 4, 2, 0, 2, 78]
# [3, 2, 4, 0, 2, 78]
# [3, 2, 0, 4, 2, 78]
# [3, 2, 0, 2, 4, 78]
# [3, 2, 0, 2, 4, 78]
# [2, 3, 0, 2, 4, 78]
# [2, 0, 3, 2, 4, 78]
# [2, 0, 2, 3, 4, 78]
# [2, 0, 2, 3, 4, 78]
# [0, 2, 2, 3, 4, 78]
# [0, 2, 2, 3, 4, 78]
# bubbled 11 times for an array of 6 numbers


#TESTING

# input_2 = Array.new(10,0)

# input_2[0] = 100

# bubble_sort(input_2)

# input_3 = Array.new(15,1)

# input_3[0],input_3[7]=10,10

# bubble_sort(input_3)

# bounce = Array.new(20,1)

# bounce[0], bounce[19]=9,0

# bubble_sort(bounce)
