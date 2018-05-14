require 'open-uri'

class RubyLibOfAndy::Http

  def self.hi(url,path)
    puts "Hello world"
  end


  def self.download(url,filepath)
    begin
      File.open(filepath, "wb") do |saved_file|
        # the following "open" is provided by open-uri
        open(url, "rb") do |read_file|
          saved_file.write(read_file.read)
        end
      end
      return true
    rescue => e
      puts e.message
      puts e.backtrace
      return nil
    end
    return nil
  end


end