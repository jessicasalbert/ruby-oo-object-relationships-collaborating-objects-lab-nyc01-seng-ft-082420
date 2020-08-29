class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.chdir(self.path) do |path|
      path.glob(*.mp3)
    end
  end


  def import
  end
end