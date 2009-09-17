class Livedate
  
  VERSION = File.read(File.dirname(__FILE__) + "/../VERSION").strip
  
  attr_reader :date_format, :datetime_format, :invalid_format
  
  def initialize(app, options = {}, &block)
    @app             = app
    @date_format     = options[:date_format]     || '%Y-%m-%d'
    @datetime_format = options[:datetime_format] || '%Y-%m-%d %H:%M'
    @invalid_format  = options[:invalid_format].to_s
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
    params['date'] ? parse_date(params['date'], date_format) : parse_date(params['datetime'], datetime_format)
  end

  def parse_date(input, format)
    require 'chronic'
    
    t = Chronic.parse(input)
    (t ? t.strftime(format) : invalid_format)
  end
end
