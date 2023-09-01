class ArraySort

    # Quick sort [Divide and Conquer] 
    # Worst case O(n²) [N in deep and N in wide]
    # Average case O(n log n) [Log N in deep and N in wide --> Faster than Merge Sort]
    def self.quick_sort(array)
        # Base case
        return array if array.size < 2

        # Normal case
        pivot = array[0]
        greater = array[1..-1].filter {|e| e > pivot}
        less = array[1..-1].filter {|e| e < pivot}

        self.quick_sort(less) + [pivot] + self.quick_sort(greater)
    end


    # Selection Sort - O(n²)
    def self.selection_sort(array)
        sorted_array = []

        while array != [] do
            min_index = get_smaller(array)
            sorted_array.append(array[min_index])
            array.delete_at(min_index)
        end
        sorted_array
    end


    #**************************      Auxiliary functions    *************************
    # Returns the index of the smallest element in the array
    # O(n)
    def self.get_smaller(array)
        min_index = 0
        min = array[min_index]

        array.each_with_index do |item, index|
            if item < min
                min = array[index]
                min_index = index
            end
        end

        min_index
    end
end
