class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
      Dir.chdir(selfpath) do |path|
      Dir.glob("*.mp3")
    end
  end


  def import
  end
end