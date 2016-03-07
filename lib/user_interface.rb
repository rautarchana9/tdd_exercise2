require_relative 'user'
require_relative 'filetype_lister'
class UserInterface
  def instantiate
    puts "welcome to resume generator"
  end

  def get_user_details
    puts "Enter your name"
    name = gets.chomp 
    puts "Enter your age"
    age = gets.chomp
    User.new(name, age)  
  end
  
  def get_user_choice_for_file_format
    list = FiletypeLister.get_filetypes
    unless list.size > 0
      puts "No formats available."
      return
    end
    list.each_with_index {|format, index| puts "#{index+1}. #{format.upcase}"}
    puts "Enter your choice"
    user_choice = gets.chomp
    user_choice
  end

end
