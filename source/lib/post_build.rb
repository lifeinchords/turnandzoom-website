module PostBuild
  class << self
    def registered(app)
      app.after_build do |builder|
        builder.run "clean_css.sh"
      end
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:post_build, PostBuild) 
