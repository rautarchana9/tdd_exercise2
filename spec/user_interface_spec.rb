require 'user_interface'
require 'user'
require 'filetype_lister'

RSpec.describe "UserInterface"do
  let(:ui) {UserInterface.new}
  describe "get_user_details"do
    it "returns an instance of user"do 
      ui.get_user_details.should be_an_instance_of User
    end
  end

  describe "get_user_choice_for_file_format" do
    it "shows the available file formats for exporting user details"do
      expect(FiletypeLister).to receive(:load_files)
      ui.get_user_choice_for_file_format
    end
  end
end