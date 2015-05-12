require "sinatra/base"

class Sinatra::Base
  helpers Geoloc::Helper
end
