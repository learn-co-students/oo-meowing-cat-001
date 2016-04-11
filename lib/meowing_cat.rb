class Cat
  def name=(cat_name)
    @name = cat_name
  end

  attr_accessor :name

  def meow
    puts "meow!"
  end
end
