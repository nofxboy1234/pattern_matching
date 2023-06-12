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

# def foo(regular, hash = {})
#   puts "regular: #{regular}"
#   puts "hash: #{hash}"
#   puts "a: #{hash[:a]}"
#   puts "b: #{hash[:b]}"
# end
# foo('regular argument', a: 12, b: 13)
# foo('regular argument', { a: 12, b: 13 })

# def foo2(regular, a:, b:)
#   puts "regular: #{regular}"
#   puts "a: #{a}"
#   puts "b: #{b}"
# end
# foo2('regular argument', a: 12, b: 13)
# # foo2('regular argument', { a: 12, b: 13 })
# # foo2('regular argument', { a: 12, b: 13 }, 3)

# def foo3(ordered_argument, **named_arguments)
#   puts "ordered argument: #{ordered_argument}"
#   puts "named arguments: #{named_arguments}"
#   puts "genre: #{named_arguments[:genre]}"
# end
# foo3(:titles, genre: 'jazz', duration_less_than: 270)

# def foo(a, *b, **c)
#   p [a, b, c]
# end
# foo(10)
# foo(10, 20, 30)
# foo(10, 20, 30, d: 40, e: 50)
# foo(10, d: 40, e: 50)
# foo([10, 20, 30])
# foo(10, 20, 30)
# opts = { d: 40, e: 50 }
# foo(10, opts, f: 60)
# foo(10, **opts, f: 60)

# def foo4(regular, a:, b:)
#   puts "regular: #{regular}"
#   puts "a: #{a}"
#   puts "b: #{b}"
# end
# foo4('regular argument', a: 12, b: 13)
# foo4('regular argument', **{ a: 12, b: 13 })
# hash = { a: 12, b: 13 }
# foo4('regular argument', **hash)

# def foo5(a, b)
#   puts "a: #{a}"
#   puts "b: #{b}"
# end
# hash = { a: 12, b: 13 }
# # foo5(**hash) # err
# def foo6(a)
#   puts "a: #{a}"
# end
# hash = { a: 12, b: 13 }
# foo6(**hash) # err

# def logger
#   zz = 500
#   yield
# end
# zz = 1
# xx = 3
# # logger do
# #   puts 'hello'
# #   puts "zz: #{zz}"
# #   puts "xx: #{xx}"
# # end
# hello = -> { puts "zz: #{zz}" }
# logger(&hello)
# zz = 4
# logger(&hello)

# marco = 'polo'
# game = -> { puts marco }
# game.call
# marco = 'rubio'
# game.call

# a = ->(x) { puts x }
# a.call # err
# a = ->(x = 'hello word') { puts x }
# a.call
# def something
#   o = proc { return }
#   o.call
#   puts 'after'
# end
# something
# def something_else
#   o = -> { return }
#   o.call
#   puts 'after'
# end
# something_else

# require 'pry-byebug'
# require 'faker'
# class FakePerson
#   attr_reader :first_name, :last_name

#   def initialize(name)
#     # binding.pry
#     @first_name = name[:first_name]
#     @last_name = name[:last_name]
#   end
# end
# # fp1 = FakePerson.new({ first_name: 'John', last_name: 'Doe' })
# # p fp1.first_name
# # p fp1.last_name
# # first_name = Faker::Name.first_name
# # last_name = Faker::Name.last_name
# # fp2 = FakePerson.new({ first_name:, last_name: })
# # p fp2.first_name
# # p fp2.last_name
# fuzzer = ->(k) { Faker::Name.send(k) }
# # p fuzzer.call(:first_name)
# # p fuzzer.call(:last_name)
# fp3 = FakePerson.new(fuzzer)
# p fp3.first_name
# p fp3.last_name

# add = ->(a, b) { puts "a: #{a}, b: #{b}"; a + b }
# p add.call(100, 200)
# increment = add.curry.call(1)
# p increment.call(100)

# l = ->(a, b) { a + b }
# p l.call(1, 2)

# square = proc { |x| x**2 }
# p square.call(3)
# p square.(3)
# p square[3]
# p square.===(3)

# class Array
#   def hello
#     puts 'hello'
#   end
# end
# a = [1, 2]
# a.hello

# def gen_times(factor)
#   Proc.new { |n| n * factor } # remembers the value of factor at the moment of creation
# end
# times3 = gen_times(3)
# times5 = gen_times(5)
# p times3.call(12)
# p times5.call(5)
# p times3.call(times5.call(4))

# proc2 = proc { |x| x**2 }
# def make_proc(&block)
#   block
# end
# proc3 = make_proc {|x| x**2 }
# p proc3
# p proc3.call(4)

# lambda1 = lambda { |x| x**2 }
# lambda2 = ->(x) { x**2 }

# +return+ in non-lambda proc, +b+, exits +m2+.
# (The block +{ return }+ is given for +m1+ and embraced by +m2+.)
# $a = []
# def m1(&b)
#   $a << :z
#   b.call
#   $a << :m1
# end

# def m2
#   $a << :z2
#   m1 { return }
#   $a << :m2
# end
# m2
# p $a
# #=> []

# +break+ in non-lambda proc, +b+, exits +m1+.
# (The block +{ break }+ is given for +m1+ and embraced by +m2+.)
# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1 { break }
#   $a << :m2
# end
# m2
# p $a
# #=> [:m2]

# +next+ in non-lambda proc, +b+, exits the block.
# (The block +{ next }+ is given for +m1+ and embraced by +m2+.)
# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1 { next }
#   $a << :m2
# end
# m2
# p $a
# #=> [:m1, :m2]

# Using +proc+ method changes the behavior as follows because
# The block is given for +proc+ method and embraced by +m2+.
# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&proc { return })
#   $a << :m2
# end
# m2
# p $a
# #=> []

# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&proc { break })
#   $a << :m2
# end
# m2
# p $a
# # break from proc-closure (LocalJumpError)

# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&proc { next })
#   $a << :m2
# end
# m2
# p $a
# #=> [:m1, :m2]

# +return+, +break+ and +next+ in the stubby lambda exits the block.
# (+lambda+ method behaves same.)
# (The block is given for stubby lambda syntax and embraced by +m2+.)
# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&-> { return })
#   $a << :m2
# end
# m2
# p $a
# #=> [:m1, :m2]

# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&-> { break })
#   $a << :m2
# end
# m2
# p $a
# #=> [:m1, :m2]

# $a = []
# def m1(&b)
#   b.call
#   $a << :m1
# end

# def m2
#   m1(&-> { next })
#   $a << :m2
# end
# m2
# p $a
# #=> [:m1, :m2]

# p = proc { |x, y| puts "x=#{x}, y=#{y}" }
# p.call(1, 2)      #=> "x=1, y=2"
# p.call([1, 2])    #=> "x=1, y=2", array deconstructed
# p.call(1, 2, 8)   #=> "x=1, y=2", extra argument discarded
# p.call(1)         #=> "x=1, y=", nil substituted instead of error

# l = ->(x, y) { puts "x=#{x}, y=#{y}" }
# l.call(1, 2)      #=> "x=1, y=2"
# # l.call([1, 2])    # ArgumentError: wrong number of arguments (given 1, expected 2)
# # l.call(1, 2, 8)   # ArgumentError: wrong number of arguments (given 3, expected 2)
# # l.call(1)         # ArgumentError: wrong number of arguments (given 1, expected 2)

# def test_return
#   -> { return 3 }.call      # just returns from lambda into method body
#   proc { return 4 }.call    # returns from method
#   5
# end
# p test_return # => 4, return from proc

# def test
#   [[1, 2], [3, 4], [5, 6]].map {|a, b| return a if a + b > 10 }
#                             #  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# end
# p test

# p = proc { |x, _y| p x }
# l = ->(x, _y) { p x }
# [[1, 2], [3, 4]].map(&p) #=> [1, 3]
# [[1, 2], [3, 4]].map(&l) # ArgumentError: wrong number of arguments (given 1, expected 2)

# class C
#   define_method(:e, &proc {})
# end
# # C.new.e(1, 2) #=> ArgumentError
# p C.new.method(:e).to_proc.lambda?   #=> true

# class C
#   def self.def2(name, &body)
#     define_method(name, &body)
#   end

#   def2(:f) {}
# end
# C.new.f(1,2)       #=> ArgumentError

# class Greeter
#   def initialize(greeting)
#     @greeting = greeting
#   end

#   def to_proc
#     proc { |name| "#{@greeting}, #{name}!" }
#   end
# end

# hi = Greeter.new('Hi')
# hey = Greeter.new('Hey')
# p %w[Bob Jane].map(&hi)    #=> ["Hi, Bob!", "Hi, Jane!"]
# p %w[Bob Jane].map(&hey)   #=> ["Hey, Bob!", "Hey, Jane!"]

# p :to_s.to_proc.call(1)           #=> "1"
# p [1, 2].map(&:to_s)              #=> ["1", "2"]

# method(:puts).to_proc.call(1)   # prints 1
# [1, 2].each(&method(:puts))     # prints 1, 2

# a = {test: 1}.to_proc.call(:test)       #=> 1
# p a
# p %i[test many keys].map(&{test: 1})  #=> [1, nil, nil]

# def m1(&b) = b.call

# def m2
#   m1 { return }
# end
# p m2 # ok

# def m1(&b) = b.call

# def m2
#   m1 { break }
# end
# p m2 # ok

# def m1(&b) = b

# def m2
#   m1 { return }.call
# end
# p m2 # ok

# def m1(&b) = b

# def m2
#   m1 { break }.call
# end
# m2 # LocalJumpError

# def m1(&b) = b

# def m2
#   m1 { return }
# end
# m2.call # LocalJumpError

# def m1(&b) = b

# def m2
#   m1 { break }
# end
# m2.call # LocalJumpError

# Explicit parameter:
# %w[test me please].each { |str| puts str.upcase } # prints TEST, ME, PLEASE
# p(1..5).map { |i| i**2 } # => [1, 4, 9, 16, 25]

# Implicit parameter:
# %w[test me please].each { puts _1.upcase } # prints TEST, ME, PLEASE
# p (1..5).map { _1**2 } # => [1, 4, 9, 16, 25]

