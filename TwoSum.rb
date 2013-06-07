
def twosum(array)
  # For each element in the array, check for zero sum (till you find one!)
  array.each do |element|
    # If the element is 0, check if the array has more than one 0
    if (element == 0) 
      if (array.count(0) > 1)
        return true
      end
    # Else check if the negative of the element exists in array  
    else
      if array.include?(-i)
        return true
      end
    end
  end
  false
end