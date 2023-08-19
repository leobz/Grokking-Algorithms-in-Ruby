class ArraySearch
  # *********************************************
  # Simple search: O(n)
  # *********************************************
  def self.simple_search(list,num)
    list.to_enum.with_index {|v, i| return i if v == num}
  end

  # *********************************************
  # Binary search: O(log n)
  # *********************************************
  def self.bsearch(list, num)
    min = 0
    max = list.size - 1

    while(min <= max) do
      middle = (max + min) / 2
      if list[middle] == num
        return middle
      end

      if list[middle] > num
        max = middle - 1
      else
        min = middle + 1
      end
    end
    return nil
  end

  # *********************************************
  # Binary search - Divide and Conquer: O(log n)
  # *********************************************
  def self.bsearch_divide_and_conquer(list, num)
    bsearch_recursive(list, num, 0, list.size - 1)
  end

  def self.bsearch_recursive(list, num, low, max)
    middle = (max + low) / 2

    # Base cases
    return nil if low >= max
    return middle if list[middle] == num

    # Recursive logic
    return bsearch_recursive(list, num, middle + 1, max) if num > list[middle] 
    return bsearch_recursive(list, num, low, middle - 1) if num < list[middle] 
  end
end
