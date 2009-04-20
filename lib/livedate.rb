class Livedate
  
  module VERSION #:nodoc:
    MAJOR = 0
    MINOR = 0
    TINY = 1
 
    STRING = [MAJOR, MINOR, TINY].join('.')
  end
  
  
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] =~ /^\/parsedate/
      params = Rack::Utils.parse_query env["QUERY_STRING"]
      [200, {"Content-Type" => "text/plain"}, [respond_to_params(params)]]
    else
      @app.call env
    end
  end


  def respond_to_params(params)
    params['date'] ? parse_date(params['date'], '%Y-%m-%d') : parse_date(params['datetime'], '%Y-%m-%d %H:%M')
  end

  def parse_date(input, format)
    require 'chronic'
    
    t = Chronic.parse(input)
    (t ? t.strftime(format) : '')
  end
end
