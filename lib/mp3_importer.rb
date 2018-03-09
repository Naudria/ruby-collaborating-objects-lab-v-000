class MP3Importer
  attr_accessor :path


  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir["./spec/fixtures/mp3s/*"].map {|x| File.basename(x)}
  end

  def import
    self.files.each{|filename|Song.new_by_filename(filename)}
  end

  def size
    self.files.size? 
  end

end
