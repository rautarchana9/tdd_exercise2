require 'csv_exporter'
require 'file_exporter'

RSpec.describe "CsvExporter" do
describe ".file_type"do
  it "returns export file type"do
    FileTypes::CsvExporter.file_type.should eql "CSV"
  end
end

describe ".export_user_details" do
      let (:user_dict) {{name: "user", age: 34}}
      let (:path) {FileTypes::CsvExporter.export_user_details(user_dict)}
  it "exports user dict to a csv file" do
    File.read(path).size.should > 0
  end
  it {File.read(path).should include(user_dict[:name])}
  it {path[-3, 3].should eql "csv"}
end
end