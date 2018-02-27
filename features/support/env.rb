require "airborne"

include Airborne

Airborne.configure do |p|
    p.base_url = 'http://191.232.189.40:3131'
    p.headers = {
      content_type:'application/json'
    }
 end