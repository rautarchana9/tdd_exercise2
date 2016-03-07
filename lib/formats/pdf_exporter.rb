require 'prawn'
require_relative 'file_exporter'

class FileTypes::PdfExporter < FileTypes::FileExporter
  def self.file_type
    "PDF"
  end

  def self.export_user_details(user_dict)
    file = user_dict[:name].to_s + ".pdf"
    Prawn::Document.generate(file)do
      user_dict.each{|key, value| text "#{key} : #{value}"}
    end
    File.expand_path(file)
  end
end

