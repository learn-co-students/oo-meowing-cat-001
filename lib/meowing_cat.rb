require_relative 'box.rb'
class Cat
  attr_accessor :name, :size

  def meow
    puts "meow!"
  end

  def get_in_box(box_size)
    if size < box_size.size
      puts "Meow! I'm in box"
    else
      puts "Sad meow, I'm not in box"
    end
  end
  
end

maru = Cat.new
maru.size = 2

fedex_box = Box.new
fedex_box.size = 3

maru.get_in_box(fedex_box)
