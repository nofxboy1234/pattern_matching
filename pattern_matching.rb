# grade = 'C'
# case grade
# when 'A' then puts 'Amazing effort'
# when 'B' then puts 'Good work'
# when 'C' then puts 'Well done'
# when 'D' then puts 'Room for improvement'
# else puts 'See me'
# end

# grade = 'C'
# case grade
# in 'A' then puts 'Amazing effort'
# in 'B' then puts 'Good work'
# in 'C' then puts 'Well done'
# in 'D' then puts 'Room for improvement'
# else puts 'See me'
# end

# login = { username: 'hornby', password: 'iliketrains' }
# login => { username: name }
# puts "Logged in with username #{name}"

# grade = 'C'
# result = case grade
#          in 'A' then 1
#          in 'B' then 2
#          in 'C' then 3
#          else 0
#          end
# puts result

# input = 3
# case input
# in String then puts 'input was of type String'
# in Integer then puts 'input was of type Integer'
# end

# age = 15
# case age
# in a
#   puts a
# end

# a = 5
# case 1
# in a
#   a
# end
# puts a

# a = 5
# case 5
# in ^a
#   puts :a_match
# end
# puts a

# a = 5
# case 1
# in ^a
#   puts :no_match
# end
# puts a

# case 3
# in 3 => a
#   puts a
# end

# case 0
# in 0 | 1 | 2
#   puts :match
# end

# case 3
# in 0 | 1 | 2
#   puts :match
# end

# case 0
# in 0 | 1 | 2
#   puts :match
# end

# a = 5
# b = 6
# c = 7
# case 7
# in ^a | ^b | ^c
#   puts :a_match
# end
# puts a
# puts b
# puts c

# a = 5
# b = 6
# c = 7
# case 8
# in ^a | ^b | ^c
#   puts :a_match
# end
# puts a
# puts b
# puts c

# a = 5
# b = 6
# c = 7
# case 7
# in a
#   puts :a_match
# end
# puts a
# puts b
# puts c

# # compile error (SyntaxError)
# a = 5
# b = 6
# c = 7
# case 7
# in a | b | c
#   puts :a_match
# end
# puts a
# puts b
# puts c

# some_other_value = true
# case 0
# in 0 if some_other_value
#   puts :match
# end

# arr = [1, 2]
# case arr
# in [1, 2] then puts :match
# in [3, 4] then puts :no_match
# end

# arr = [1, 2]
# case arr
# in [Integer, Integer]
#   puts :match
# in [String, String]
#   puts :no_match
# end

# arr = [1, 2, 3]
# case arr
# in [Integer, Integer]
#   puts :no_match
# end

# arr = [1, 2, 3]
# case arr
# in [Integer, Integer, *]
#   puts :match
# end

# arr = (1..10).to_a
# case arr
# in [Integer, Integer, *, Integer, Integer]
#   puts :match
# end

# arr = (1..10).to_a
# case arr
# in [Integer, Integer, *, 9, 10]
#   puts :match
# end

# arr = (1..4).to_a
# case arr
# in [1, 2, *tail]
#   p tail
# end
# p tail

# arr = (1..4).to_a
# case arr
# in [_, _, 3, 4]
#   puts :match
# end

# arr = [1, 2]
# case arr
# in [a, b] unless a == b
#   puts :match
# end
# p a
# p b

# arr = [1, 2, [3, 4]]
# case arr
# in [_, _, [3, 4]]
#   puts :match
# end

# arr = (1..5).to_a
# case arr
# in [1, 2, 3, a, b]
#   puts a
#   puts b
# end

# case [1, 2, 3, [4, 5]]
# in [1, 2, 3, [4, a] => arr]
#   puts a
#   p arr
# end

# arr = [1, 2, 3]
# case [1, 2, 4]
# in arr
#   :match
# end
# p arr

# arr = [1, 2, 3]
# case [1, 2, 4]
# in ^arr
#   :match
# end
# p arr

# arr = [1, 2, 3, 4]
# case arr
#   in 1, 2, 3, 4
#   puts :match
# end

# case { a: 'apple', b: 'banana' }
# in {a: 'aardvark', b: 'bat'}
#   puts :no_match
# in {a: 'apple', b: 'banana'}
#   puts :match
# end

# case { a: 'apple', b: 'banana' }
# in {a: a, b: b}
#   puts a
#   puts b
# end

# case { a: 'apple', b: 'banana' }
# in {a:, b:}
#   puts a
#   puts b
# end

# case { a: 'apple', b: 'banana' }
# in a:, b:
#   puts a
#   puts b
# end

# case { a: 'ant', b: 'ball', c: 'cat' }
# in {a: 'ant', **rest}
#   p rest
# end

# case { a: 'ant', b: 'ball' }
# in {a: 'ant'}
#   p 'this will match'
# in {a: 'ant', b: 'ball'}
#   p 'this will never be reached'
# end

# case { a: 'ant', b: 'ball' }
# in {a: 'ant', **nil}
#   p 'no match'
# in {a: 'ant', b: 'ball'}
#   p 'match'
# end

# case { a: 'ant', b: 'ball' }
# in {a: 'ant'} => hash
#   p hash
# end

# login = { username: 'hornby', password: 'iliketrains' }
# login => {username: name}
# puts "Logged in with username #{name}"

# case [1, 2, 3]
# in [*pre, 1, 2, 3, *post]
#   p pre
#   p post
# end

# case [1, 2, 3, 4, 5]
# in [*pre, 2, 3, *post]
#   p pre
#   p post
# end

# case [1, 2, 'a', 4, 'b', 'c', 7, 8, 9]
# in [*pre, String => x, String => z, *post]
#   p pre
#   p x
#   p z
#   p post
# end

# data = [
#   { name: 'James', age: 50, first_language: 'english', job_title: 'general manager' },
#   { name: 'Jill', age: 32, first_language: 'italian', job_title: 'leet coder' },
#   { name: 'Helen', age: 24, first_language: 'dutch', job_title: 'biscuit quality control' },
#   { name: 'Bob', age: 64, first_language: 'english', job_title: 'table tennis king' },
#   { name: 'Betty', age: 55, first_language: 'spanish', job_title: 'pie maker' }
# ]

# name = 'Jill'
# age = 32
# job_title = 'leet coder'

# match = data.find do |person|
#   person[:name] == name && person[:age] = age && person[:job_title] == job_title
# end
# puts match&.fetch(:first_language)

# case data
# in [*, {name: ^name, age: ^age, first_language: first_language, job_title: ^job_title}, *]
# else
#   first_language = nil
# end
# puts first_language

# config = { db: { user: 'admin', password: 'abc123' } }
# # config = { connection: { username: 'admin', password: 'abc123' } }
# case config
# in db: {user:}
#   puts "1. Connect with user '#{user}'"
# in connection: {username:}
#   puts "2. Connect with user '#{username}'"
# else
#   puts 'Unrecognized structure of config'
# end

# config => {db: {user:}}
# # config => db: {user:}
# puts "1. Connect with user '#{user}'"

# users = [{ name: 'Alice', age: 12 }, { name: 'Bob', age: 23 }]
# puts users.any? { |user| user in {name: /B/, age: 20..} }

# case [1, 2, 3]
# in [Integer, Integer]
#   puts 'matched'
# else
#   puts 'not matched'
# end

# case { a: 1, b: 2, c: 3 }
# in {a: Integer}
#   puts 'matched'
# else
#   puts 'not matched'
# end

# case { a: 1, b: 2, c: 3 }
# in {}
#   puts 'matched'
# else
#   puts 'not matched'
# end

# case {}
# in {}
#   puts 'matched'
# else
#   puts 'not matched'
# end


