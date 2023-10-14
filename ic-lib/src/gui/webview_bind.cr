{% if flag?(:darwin) %}
  @[Link(ldflags: "-I#{__DIR__} -L#{__DIR__} #{__DIR__}/libwebview_binding.a -framework WebKit -lc++")]
{% elsif flag?(:linux) %}
  @[Link(ldflags: "-I#{__DIR__} -L#{__DIR__} #{__DIR__}/libwebview_binding.a `pkg-config --libs gtk+-3.0 webkit2gtk-4.0` -lstdc++")]
{% end %}


lib Run 
  fun run(url : LibC::Char*, title : LibC::Char*, width : LibC::Int, height : LibC::Int) : Void
end

# Usage
#######

# url = "http://127.0.0.1:3000/root" 
# width = 800
# height = 600
# title = "App title"
# Run.run(url, title, width, height)
