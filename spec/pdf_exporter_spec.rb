require 'pdf_exporter'
require 'file_exporter'

RSpec.describe "PdfExporter" do

describe ".file_type"do
  it "returns export file type"do
    FileTypes::PdfExporter.file_type.should eql "PDF"
  end
end
describe ".export_user_details" do
      let (:user_dict) {{name: "user", age: "user_age"}}
      let (:path) {FileTypes::PdfExporter.export_user_details(user_dict)}
  it "exports user dict to a pdf file" do
    File.read(path).size.should > 0
  end
  it {path[-3, 3].should eql "pdf"}
end
end