if Rails.version >= "3.1"
  require "geoloc/engine"
else
  ActionView::Base.send :include, Geoloc::Helper
end
