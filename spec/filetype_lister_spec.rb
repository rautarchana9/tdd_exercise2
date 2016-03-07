require 'filetype_lister'
RSpec.describe "FiletypeLister"do
  describe".load_files"do
    it "loads all available file formats to export user details"do
      FiletypeLister.get_filetypes.should eql ["CSV", "PDF"]
    end
  end
  describe".get_export_object_for"do
  	it "exports the user details to desired format"do
  	  FiletypeLister.get_export_object_for(1).class.name.should  eql FileTypes::CsvExporter.class.name 
  	end
  end
end