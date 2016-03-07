require "file_exporter"
RSpec.describe "FileTypes::FileExporter" do
  "it creates the abstract base class for file exports"
  describe ".file_type"do
  	it "returns the file type for the particular class"do
  		FileTypes::FileExporter.file_type.should eql "Not Implemented"
  	end
  end

  describe ".export_user_details"do
    it "exports the user object dict to a specified file format" do
      user_dict = double(Hash)
      FileTypes::FileExporter.export_user_details(user_dict).should eql "Not Implemented"
    end
  end
end