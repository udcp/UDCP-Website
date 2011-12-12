working_dir = File.dirname(__FILE__)
$:.unshift working_dir
require 'rss'
require 'sinatra'

( Dir::glob("controllers/*.rb") ).each do |controller|
  load controller
end

( Dir::glob("models/*.rb") ).each do |model|
  require model
end
