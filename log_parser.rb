module LogParser
  class Parse

    def initialize(file)
      @log_path = file
    end

    def parse
      file = File.new(@log_path, "r")
      lines = []
      while (line = file.gets)
        data = line.split(" ")
        lines << {
        :page => data[0],
        :user => data[1]
        }
      end
      file.close
      lines
    end
  end
end
