class LivedatePrototypeGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      m.directory "public/javascripts"
      m.file "javascript/prototype.js", "public/javascripts/livedate.js"
    end
  end

end
