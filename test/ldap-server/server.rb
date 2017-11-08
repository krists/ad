require "rubygems"
require "ladle"
server = Ladle::Server.new(allow_anonymous: false, verbose: false)
server.start
sleep
