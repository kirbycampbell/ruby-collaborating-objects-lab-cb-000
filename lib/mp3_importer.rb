class MP3Importer
  attr_accessor :path
@@files = []

  def initialize(path)
    @path = path
  end

  def files

  end

  def import(list_of_files)
    list_of_files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end
