class StudentsController < ApplicationController

  # CRUD controller
  # Business Logic Maintenance
  # 'maintenance screens'

  ## list (read) all the students


  get '/' do

    authorization_check

    @students = StudentsModel.all
    erb :students_index
  end

  ## create students
  get '/create' do

    authorization_check

    erb :students_create
  end

  post '/create' do

    authorization_check

    @student = StudentsModel.new
    # params contains any object posted as a name
    @student.name = params[:name] # binds to <input name='name'>
    @student.email = params[:email] # binds to <input name='email'>
    @student.save

    erb :students_create_success
  end

  ## update (edit) students
  get '/edit/:id' do

    authorization_check

    @id = params[:id]
    @student = StudentsModel.find(@id)

    erb :students_edit
  end

  post '/edit' do

    authorization_check

    @student = StudentsModel.find(params[:id])
    @student.name = params[:name]
    @student.email = params[:email]
    @student.save

    erb :students_edit_success

  end

  ## delete (destroy) students
  post '/delete' do

    authorization_check

    @id = params[:id]
    @student = StudentsModel.find(@id)
    @student.destroy

    erb :students_delete_success
  end

end
