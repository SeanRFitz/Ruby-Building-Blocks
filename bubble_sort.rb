def bubble_sort(arr)
	(arr.length - 1).times do
		arr.each_with_index do |num,i|
			if i < arr.length - 1
				if arr[i] > arr[i+1]
					arr.insert(i+2,arr[i])
					arr.delete_at(i)
				end
			end
		end
	end
	return arr
end

a = [4,3,78,2,0,2]
puts bubble_sort(a)

def bubble_sort_by(arr)
	(arr.length - 1).times do
		arr.each_with_index do |num,i|
			if i < arr.length - 1
				if yield(arr[i],arr[i+1]) > 0
					arr.insert(i+2,arr[i])
					arr.delete_at(i)
				end
			end
		end
	end
	return arr
end

b = bubble_sort_by(["hi","yellows","hey","hello"]) do |left,right|
	left.length - right.length
end

puts b