class MyClass

  def initialize(name)
    @name = name
  end

  def my_method
    puts "Hello, #{@name}!"
  end

  def if_statement(number)
    random_number = Random.rand(10)
    if random_number > number
      puts "Random was greater"
    elsif random_number < number
      puts "Random was less"
    else
      puts "Random was equal"
    end
  end

  def loop
    array = [1,2,3,4,5,6]
    array.each_with_index do |e,index|
      puts "#{e + 1} in position #{index}"
    end
  end
end

instance = MyClass.new("Johnson")
instance.loop

