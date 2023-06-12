# def logger
#   yield
# end
# logger { puts 'hello from the block' }
# logger do
#   p [1, 2, 3]
# end

# def double_vision
#   yield
#   yield
# end
# double_vision { puts 'How many fingers am I holding up?' }

# def love_language
#   yield('Ruby')
#   yield('Rails')
# end
# love_language { |lang| puts "I love #{lang}" }

# @transactions = [10, -15, 25, 30, -24, -70, 999]
# def transaction_statement
#   @transactions.each do |transaction|
#     yield transaction
#   end
# end

# transaction_statement do |transaction|
#   p "%0.2f" % transaction
# end

# @transactions = [10, -15, 25, 30, -24, -70, 999]
# def transaction_statement
#   @transactions.each do |transaction|
#     p yield transaction
#   end
# end

# transaction_statement do |transaction|
#   "%0.2f" % transaction
# end

# @transactions = [10, -15, 25, 30, -24, -70, 999]
# def transaction_statement
#   formatted_transactions = []
#   @transactions.each do |transaction|
#     formatted_transactions << yield(transaction)
#   end

#   p formatted_transactions
# end

# transaction_statement do |transaction|
#   "%0.2f" % transaction
# end

# def say_something
#   yield
# end

# say_something do |word|
#   puts "And then I said: #{word}"
# end

# def mad_libs
#   yield('cool', 'beans', 'burrito')
# end

# mad_libs do |adjective, noun|
#   puts "I said #{adjective} #{noun}"
# end

# def awesome_method(&block)
#   hash = { a: 'apple', b: 'banana', c: 'cookie' }

#   # hash.each do |key, value|
#   #   yield key, value
#   # end
#   hash.each(&block)
# end

# awesome_method { |key, value| puts "#{key}: #{value}" }
# p awesome_method

# def simple_method
#   yield
# end

# simple_method

# def maybe_block
#   puts 'block party' if block_given?
#   puts 'executed regardless'
# end

# # maybe_block
# maybe_block {}

# my_lambda = lambda { puts 'my lambda' }
# my_other_lambda = -> { puts 'hello from the other side' }

# my_lambda = -> { puts 'high five' }
# my_lambda.call

# my_name = ->(name) { puts "hello #{name}" }
# # my_age = lambda { |age| puts "I am #{age} years old" }
# my_age = ->(age) { puts "I am #{age} years old" }

# my_name.call('tim')
# my_age.call(78)

# my_name = ->(name) { puts "hello #{name}" }
# my_name.call('tim')
# my_name.('tim')
# my_name['tim']
# my_name.=== 'tim'

# a_proc = Proc.new { puts 'this is a proc' }
# a_proc.call

# a_proc = proc { puts 'this is a proc' }
# a_proc.call

# a_proc = proc { |name, age| puts "name: #{name} --- age: #{age}" }
# a_proc.call('tim', 80)

# a_proc = proc { |a, b| puts "a: #{a} --- b: #{b}" }
# a_proc.call('apple')

# nested_array = [[1, 2], [3, 4], [5, 6]]
# p nested_array.select { |a, b| a + b > 10 }

# a_lambda = lambda { |a, b| puts "a: #{a} --- b: #{b}" }
# a_lambda = ->(a, b) { puts "a: #{a} --- b: #{b}" }
# a_lambda.call('apple')
# a_lambda.call('apple', 'banana', 'cake')
# a_lambda.call([1, 2])

# a_proc = proc { |a, b| puts "a: #{a} --- b: #{b}" }
# a_proc.call([1, 2])

# a_lambda = -> { return 1 }
# p a_lambda.call

# a_proc = proc { return 1 }
# p a_proc.call # localJumpError (unexpected return) in irb

# def my_method
#   a_proc = Proc.new { return }
#   puts 'this line will be printed'
#   a_proc.call
#   puts 'this line is never printed'
# end

# my_method

# my_proc = proc { |name = 'bob'| puts name }
# my_proc.call

# my_lambda = ->(name = 'r2d2') { puts name }
# my_lambda.call

# require 'pry-byebug'
# def my_method(useful_arg)
#   # puts block_given?
#   binding.pry
#   useful_arg.call
# end

# my_lambda = -> { puts 'lambda' }
# my_proc = proc { puts 'proc' }

# my_method(my_lambda)
# my_method(my_proc)

# def logger
#   yield
# end
# logger { puts 'hello from the block' }
# logger my_lambda
# logger(my_lambda)

# require 'pry-byebug'
# def cool_method(&my_block)
#   # puts block_given?
#   # binding.pry
#   my_block.call
#   # yield # can be used but makes unclear
# end
# cool_method { puts 'cool' }

# arr = %w[1 2 3]
# p arr.map { |element| element.to_i }
# p arr.map(&:to_i)

# p (1..10).map(&:to_s)
# p((1..10).map { |x| x.send(:to_s) })
# p ('1'..'10').map(&:to_i)
# p(('1'..'10').map { |x| x.send(:to_i) })

# def cool_method
#   # binding.pry
#   yield
# end
# my_proc = proc { puts "proc party" }
# my_proc.call
# cool_method(&my_proc)

# my_lambda = -> { puts "lambda party" }
# cool_method(&my_lambda)

# def cool_method(an_arg)
#   an_arg.call
# end
# a_proc = proc { puts 'procodile hunter' }
# cool_method(&a_proc)

# def return_binding
#   foo = 100
#   binding
# end
# puts return_binding.class
# puts return_binding.eval('foo')

def foo(regular, hash = {})
  puts "regular: #{regular}"
  puts "hash: #{hash}"
  puts "a: #{hash[:a]}"
  puts "b: #{hash[:b]}"
end
foo('regular argument', a: 12, b: 13)
foo('regular argument', { a: 12, b: 13 })

def foo2(regular, a:, b:)
  puts "regular: #{regular}"
  puts "a: #{a}"
  puts "b: #{b}"
end
foo2('regular argument', a: 12, b: 13)
# foo2('regular argument', { a: 12, b: 13 })
# foo2('regular argument', { a: 12, b: 13 }, 3)

def foo3(ordered_argument, **named_arguments)
  puts "ordered argument: #{ordered_argument}"
  puts "named arguments: #{named_arguments}"
  puts "genre: #{named_arguments[:genre]}"
end
foo3(:titles, genre: 'jazz', duration_less_than: 270)

def foo4(a, b)
  puts "a: #{a}"
  puts "b: #{b}"
end
# foo4(1, 2)
# foo4(*[3, 4])
# arr = [4, 5]
# foo4(*arr)

def foo(a, *b, **c)
  p [a, b, c]
end
foo(10)
foo(10, 20, 30)
foo(10, 20, 30, d: 40, e: 50)
foo(10, d: 40, e: 50)
foo([10, 20, 30])
foo(*[10, 20, 30])
opts = {d: 40, e: 50}
foo(10, opts, f: 60)
foo(10, **opts, f: 60)

# require 'faker'
# class FakePerson
#   attr_reader :first_namee, :last_name

#   def initialize(first_name:, last_name:); end

#   def initialize(name)
#     @first_namee = name[:first_namee]
#     @last_name = name[:last_name]
#   end
# end
# p1 = FakePerson.new(first_namee: 'John', last_name: 'Doe')
# p p1.first_namee
# p p1.last_name
# fuzzer = lambda do |k|
#   puts "k: #{k}"
#   Faker::Name.send(k)
# end
# p2 = FakePerson.new(fuzzer)
# p p2.first_namee
# p p2.last_name
