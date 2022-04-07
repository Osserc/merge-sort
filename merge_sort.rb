def fibs(n)
    i = 0
    sequence = [0, 1]
    while i < n do        
        sequence.push(sequence[sequence.length - 2] + sequence[sequence.length - 1])
        i += 1
    end
    puts sequence.join(', ')
end

def fibs_rec(sequence, n)
    if n > 0
        sequence.push(sequence[sequence.length - 2] + sequence[sequence.length - 1])
        fibs_rec(sequence, n - 1)
    end
    sequence
end

def merge_sort(array)
    if array.length == 1
        return array
    else
        left_side = array.slice(0, array.length / 2)
        right_side = array.slice(array.length / 2, array.length - 1)
        left_side = merge_sort(left_side)
        right_side = merge_sort(right_side)

        temp = []

        until left_side.empty? == true && right_side.empty? == true
            if left_side.empty? == true && right_side.empty? == false
                temp << right_side.shift
            elsif right_side.empty? == true && left_side.empty? == false
                temp << left_side.shift
            elsif left_side[0] < right_side[0]
                temp << left_side.shift
            elsif left_side[0] > right_side[0]
                temp << right_side.shift
            end
        end
        return temp
    end

    array = left_side + right_side
end

array = [1, 32, 54, 34, 67, 89, 33, 5, 43, 31, 543, 234, 71]
puts array.join(", ")
puts merge_sort(array).join(", ")