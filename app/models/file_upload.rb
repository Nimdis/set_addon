class FileUpload < ActiveRecord::Base
  attr_accessor :upload

  def self.save(upload)
    name = upload['application'].original_filename
    directory = 'public/upload'
    path = File.join(directory,name)
    File.open(path, "wb") { |f| f.write(upload['application'].read)}
  end
end
