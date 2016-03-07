require_relative 'user_interface'
require_relative 'filetype_lister'
while true
  puts "Type *write to export your resume details to desired format or *exit to quit the application "
  action = gets.chomp
  if action == "write"
    ui = UserInterface.new
    user_dict = ui.get_user_details.to_hash
    user_choice = ui.get_user_choice_for_file_format.to_i
    export_object = FiletypeLister.get_export_object_for(user_choice)
    export_object.export_user_details(user_dict)
  elsif action == "exit"
    exit
  end
end

