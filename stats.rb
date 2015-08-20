module LogParser
  class Stats

    def initialize(data)
      @data = data
    end

    def page_ranking_visits
      rank @data
    end

    def page_ranking_unique_visit
      # print @data.uniq
      # print @data.length
      # print @data.uniq.each {|l| print l.to_s+"\n"}
      rank @data.uniq
    end

    private

    def rank data
      data.each_with_object(Hash.new(0)){ |m,h| h[m[:page]] += 1 }.sort_by{|k,v| v }.reverse
    end
  end
end
