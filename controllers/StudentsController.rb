class StudentsController < ApplicationController
  
  # GET: localhost/students/
  get '/' do

    # get all the students!
    students = Students.all.to_json

  end

end
