class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.foreach(@path) { |filename| files << filename if filename.include?".mp3"}
    files
  end

  def import
      files.each {|filenames| Song.new_by_filename(filenames) }
  end

end
