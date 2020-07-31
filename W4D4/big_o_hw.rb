fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


#O(n ^ 2)

def octopus_sluggish(arr)
    longest = 0
    fish = ''
    (0...arr.length).each do |i|

        if fish.length > longest
            fish = arr[ i ]
            longest = fish.length
        end

        quantity = arr.select { |f| f.length > longest }.length
        next if quantity > 1 && (i % arr.length) != 0
    end

    longest 
end

#O(n)

def clever_octopus(arr)
    longest = 0
    l_fish = ''

    arr.each do |fish|
      if fish.length > longest 
         longest = fish.length 
         l_fish = fish 
      end
    end

    l_fish
end


def 

#O lg n

def dominant_oct(arr)
    return [nul] if arr.length == 0

    dominant_oct(arr[1...arr.length]) if arr[ 0 ].length > arr [ 1 ].length
end


#ran out of time for the rest 

