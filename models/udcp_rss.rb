class UdcpRss
  attr_accessor :rss
  def initialize
    @resource = "http://pipes.yahoo.com/pipes/pipe.run?_id=c6175d44a6ee2618836d0cbb87e5043e&_render=rss"
  end

  def parse
    begin
	    @rss = RSS::Parser.parse( @resource )
    rescue RSS::InvalidRSSError
      @rss = RSS::Parser.parse( @resource, false )
    end
  end
end