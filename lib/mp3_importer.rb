class MP3Importer
  attr_accessor :path
@@files = []

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.new(path).each do |file|
      files << file if file.include?(".mp3")
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
