require_relative "./box.rb"
class Cat
  attr_reader :name
  attr_writer :name
  attr_accessor :size

  def meow
    puts "meow!"
  end

  def get_in_box(box)
    if self.size <= box.size
      puts "Meow! I'm in the box!"
    else
      puts "Sad meow, I'm not in the box"
    end
  end

end
