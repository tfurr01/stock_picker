def stock_picker(arr)
  best_days = []
  result = 0
  arr.each_with_index do |price, day|
    temp_arr = arr.slice(0..day)
    temp_arr.each_with_index do |second_price, second_day|
      if (price - second_price) > result
        result = price - second_price
        best_days = [second_day, day]
      end
    end
  end
  puts result
  p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])