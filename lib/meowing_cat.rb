require 'pry'
require_relative './box'

class Cat
  attr_writer :name, :size
  attr_reader :name, :size

  def meow
    puts "meow!"
  end

  def get_in_box(box)
    if self.size <= box.size
      puts "Meow! I'm in the box!"
    else
      puts "Meow? I'm too big!"
    end
  end
end

maru = Cat.new
maru.size = 2

fedex_box = Box.new
fedex_box.size = 3

maru.get_in_box(fedex_box)