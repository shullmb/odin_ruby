# Bubble Sort By

def bubble_sort_by(arr)
	iterations = 0
	loop do																								
		bubbled = false																				
		(arr.length - 1).times do | index |														
			if (yield arr[index] , arr[index + 1] ) <0														
				arr[index], arr[index + 1] = arr[ index +1], arr[index]					
				bubbled = true																		
				iterations +=1																																							
			end																							
		end																								
		break if not bubbled																		
	end																									
	p arr
end

input = ["hi", "hello", "hey"]

bubble_sort_by(input) do |left, right|
	left.length - right.length
end

input = ["hi", "hello", "hey"]

bubble_sort_by(input) do |left, right|
	right.length - left.length
end