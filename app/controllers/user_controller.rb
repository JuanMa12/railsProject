class UserController < ApplicationController

  before_action :set_user, only: [:edit, :destroy]
  before_action :check_user,  only: [:profile]
  before_action :set_image,  only: [:profile, :index]

  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new
    user.name = params[:name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]
    user.ip = request.remote_ip
    user.save
    image = Image.new
    image.image = params[:image]
    image.user_id = user.id
    image.save
    name = params[:image].original_filename
    directory = "public/images"
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(params[:image].read) }
      if user.save
        flash[:success] = 'User Create!'
        redirect_to user_index_path
      else
        render 'new'
      end
  end

  def profile

  end

  def edit
    @images = Image.all
  end

  def update
    user = User.find(params[:id])
    if user.update(
        name:params[:name],
        last_name:params[:last_name],
        email:params[:email]
    )
        image = Image.find_by(user_id: user.id)
        if image.update(
            image:params[:image]
        )
          end
        name = params[:image].original_filename
        directory = "public/images"
        path = File.join(directory, name)
        File.open(path, "wb") { |f| f.write(params[:image].read) }

      flash[:success] = 'User Update Correct!'
      redirect_to user_index_path
    end
  end

  def destroy
    if @user.destroy
      flash[:danger] = 'User Delete!'
      redirect_to user_index_path
    else
      render 'index'
    end
  end

  private
  #user id
  def set_user
    @user = User.find(params[:id])
  end

  #session
  def check_user

  end

  def set_image
    @images = Image.all
  end

end
