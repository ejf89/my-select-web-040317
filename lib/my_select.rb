require 'pry'


def my_select(array)
    i = 0
    selection = []
    while i < array.length
        if yield(array[i]) == true
            selection << array[i]
        end
        i = i + 1
    end
    selection
end


array = [1, 24, 3]

my_select(array) do |element|
    element.even?
end
