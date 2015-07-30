class HomeController < ApplicationController

  get '/' do
    {:name => 'test'}.to_json
  end

end
