


my_lambda = lambda do |num|  
    return 'Fizz' if num % 3 == 0
end

my_buzz = lambda { print "Buzz"} 

1.upto(100) do |i|
  if i % 5 == 0 and i % 3 == 0
    puts "FizzBuzz"
      elsif i % 5 == 0
    puts my_buzz.call
      elsif my_lambda.call(i)
      else
    puts i
      end
end

