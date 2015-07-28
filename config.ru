require 'sinatra/base'

# loading all controllers + models
Dir.glob('./{controllers,models}/*.rb').each {
 |file| require file
}

#localhost/students/
map('/students') { run StudentsController }
