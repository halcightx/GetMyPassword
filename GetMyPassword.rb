# this line is updated at Apr. 18, 2013

# this function add two integer array to a single array which has the length as the shorter one
# in this program, it adds two array of ascii number of the site name and the key
def addToShortArray(short_array, long_array)
	result = []
	i = 0
	while i < short_array.length do
		result << short_array[i] + long_array[i]
		i += 1
	end
	return result
end

# get the user defined key
puts "Your key is ...?"
my_key = gets.chomp.downcase.bytes.to_a

# get the site name
puts "You want to retrieve the password for ...? (gmail? hotmail? facebook?)"
site_name = gets.chomp.downcase.bytes.to_a

# get the defference of the lengthes of key and site name and differ the shorter one from the longer
shorter_array = my_key
longer_array = site_name
if shorter_array.length > longer_array.length
	shorter_array = site_name
	longer_array = my_key
end
length_diff = longer_array.length - shorter_array.length

# this function check whether an integer is even
def isEven(i)
	(i & 1) == 0
end

# determine whether password has "." in it
hasDot = isEven(length_diff)

# generate password version 0.1
password = addToShortArray(shorter_array, longer_array)
# generate password version 0.2
password.concat(addToShortArray(shorter_array, longer_array.reverse))
# trim password to version 0.3
if password.length > 16
	password = password[0..15]
end

# trim password to final version
i = 0
while i < password.length do
	if password[i] > 126 # 126 = '~'
		if isEven(password[i])
			password[i] = password[i] % 26 + 97
		else
			password[i] = password[i] % 26 + 65
		end
	end
	unless i == (longer_array.length % shorter_array.length) or i == shorter_array.length
		password[i] = password[i].chr
	end
	if i == (length_diff % password.length) and hasDot
		password[i] = "."
	end
	i += 1
end

# print password
puts "Your password is:"
password.each do |i|
	print i
end
puts "\n"

# exit
puts "Enter any key to exit..."
gets
