class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
      Dir.chdir(self.path) do |path|
      Dir.glob("*.mp3")
    end
  end


  def import
    files.each do |file|
      Song.new_by_file_name(file)
    end
  end
end