  
  require "./settings"
  require "./webview_bind"

  def run_app(title : String)
    url = "http://#{IP}:#{PORT}/#{ROOT}" 
    puts url
    Run.run(url, title, WIDTH, HEIGHT)
  end
