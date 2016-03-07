require_relative 'file_exporter'

class FileTypes::CsvExporter < FileTypes::FileExporter
  def self.file_type
    "CSV"
  end

  def self.export_user_details(user_dict)
    file = File.open(user_dict[:name].to_s+".csv", "w+")
    user_dict.each do |key, value|
      file << "#{key}, #{value}\n"
    end
    file.close
    File.expand_path(file)
  end
end