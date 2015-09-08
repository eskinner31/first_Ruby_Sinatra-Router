require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
      erb :root #renders the root.erb page in the browser
  end

  get '/greeting' do
      erb :greeting, :locals => { :salutation => "Aloha", :name => "Spencer"} #renders the greeting erb in the browser
  end

 run! if app_file == $0

end
