class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render 'users/new.html.erb'
  end

  def edit
    puts "ID" + params[:id]
    @user = User.find(params[:id])
    puts "edit " + @user.name
    render "users/edit.html.erb"
  end

  def show
    puts "show" + params[:id]
    render json: User.find(params[:id])
  end


  def add_user
    User.create(name: params[:name])
    redirect_to '/users'

  end

  def total
    @total = User.all.length
  
    render 'users/total.html.erb'
  end

end
