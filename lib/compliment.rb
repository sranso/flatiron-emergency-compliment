class Compliment

  def message
    @messages = []
    File.readlines('./public/compliments.txt').each do |line|
      @messages << line
    end
    @messages.sample
  end

  def image
    @images = []
    Dir["public/img/*"].each do |file|
      @images << file[6..-1]
    end
    @images.sample
  end

end