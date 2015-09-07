#Stock Picker

input = [17,3,6,9,15,8,6,1,10]

def stock_picker(input)
	buy_day, sell_day, profit_margin = 0,0,0						#initialize variable for buy, sell and profit for comparison
    input.each_with_index do |buy_value, day|					#iterate over array of stock prices
        sell_value = input[day..-1].max								#find highest sell price after buy day
        if (sell_value - buy_value) > profit_margin					#compare possible profit margins
                buy_day = day
                sell_day = input[day..-1].index(sell_value)+day 
                profit_margin = sell_value - buy_value
        end
    end
    puts "It is best to buy on day #{buy_day}, selling on day #{sell_day} for a profit of #{profit_margin}." 
end

stock_picker(input)
