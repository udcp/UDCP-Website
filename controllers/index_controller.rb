get '/' do
  udcp = UdcpRss.new
  udcp.parse
  @rss = udcp.rss
  erb :index
end
