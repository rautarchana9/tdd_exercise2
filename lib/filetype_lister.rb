require_relative './formats/file_exporter'
class FiletypeLister
  def self.load_files
    Dir[File.join(__dir__, 'formats', '*.rb')].each do |file|
        require file
      end
      format_objects = FileTypes.constants.map { |c| FileTypes.const_get(c) }
      format_objects - [FileTypes::FileExporter] 
  end

  def self.get_filetypes
  	self.load_files.map{|format| format.file_type}
  end

  def self.get_export_object_for(user_choice)
  	self.load_files[user_choice-1]
  end
end
