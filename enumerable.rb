#Enumerable

module Enumerable

	def my_each
		
		return self unless block_given?
			
		for value in self
			yield value
		end
	
	end
	
	def my_each_with_index
	
		return self unless block_given?
		
		for index in 0...self.length
			yield self[index], index
		end
		
	end
	
	def my_select
	
		return self unless block_given?
		
		output = Array.new
		my_each {|x| output << x if yield x}
		output

	end
	
	def my_all? 
				
		validated = true
		
		my_each do |obj|
			if block_given?
				validated = false if yield(obj) == false
			else
				validated = false if obj == false
			end
		end
		
		validated
	
	end
	
	def my_any?
	
		validated = false
		
		my_each do |obj|
			if block_given?
				validated = true if yield(obj) == true
			else
				validated = true if obj == true
			end
		end
		
		validated
	
	end
	
	def my_none?

		validated = true
		
		my_each do |obj|
			if block_given?
				validated = false if yield(obj) == true
			else
				validated = false if obj == true
			end
		end
		
		validated
		
	end
	
	def my_count(*item)
	
		count = 0
		
		if item.empty?
			my_each do |obj|
				if block_given?
					count+=1 if yield(obj) == true
				else
					count+=1
				end
			end
		else
			my_each do |obj|
				count +=1 if (obj == item.first)
			end
		end
		count

	end
	
	def my_map
		return self.to_enum unless block_given?
		
		output = Array.new
		
		my_each do |obj|
			output << yield(obj)
		end
		output
	end

	def my_proc_map(&proc)
		output = Array.new
		
		my_each do |obj|
			output << proc.call(obj)
		end
		output
	end
	
	def my_proc_and_block_map(proc)
		output = Array.new
		if block_given?
			#puts "here"
			my_each do |obj|
				procd = proc.call(obj)
				output << yield(procd)
			end
		else
			#puts "there"
			my_each do |obj|
				output << proc.call(obj)
			end
		end
		output
	end
	
	# def my_p_and_b_map(proc)
	# 	output = Array.new
	# 	blocked = Array.new
	# 		my_each do |obj|
	# 			output << proc.call(obj)
	# 		end
	# 	if block_given?
	# 		output.my_each do |prc|
	# 			blocked << yield(prc)
	# 		end
	# 		blocked
	# 	else
	# 		output
	# 	end		
	# end

	def my_inject(*memo)
		memo = nil
		self.my_each do |obj|
			if memo.nil?
				memo = obj
			else
				memo = yield(memo, obj)
			end
		end
		memo			
	end
	
end

def multiply_els(arr)
	arr.my_inject {|product, num| product * num}
end
