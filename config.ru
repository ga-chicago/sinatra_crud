require 'sinatra/base'

Dir.glob('./{controllers,models,helpers}/*.rb').each { |file| require file }

map('/') { run HomeController }
map('/students') { run StudentsController }
