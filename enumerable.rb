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
				validated = false if yield obj == false
			else
				validated = false if obj == false
			end
		end
		validated
	
	end
	
	def my_any?
	
	end
	
	def my_none?
	
	end
	
	def my_count
	
	end
	
	def my_map
	
	end
	
	def my_inject
	
	end
	
end