class ScenesController < ApplicationController
  def index
    @scenes = Scene.all.order("created_at DESC")
  end
  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(scene_params)
    if @scene.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @scene = Scene.find(params[:id])
    
  end

  def update
    scene = Scene.find(params[:id])
    if @scene.update(scene_params)
      redirect_to root_path
    else
      render :update
    end
  end

  def show
    @scene = Scene.find(params[:id])
    @comment = Comment.new
    @comments = @scene.comments.includes(:user)
  end

  def destroy 
    scene = Scene.find(params[:id])
    scene.destroy
  end
  
  private
  def scene_params
    params.require(:scene).permit(:image, :text, :area,:date).merge(user_id: current_user.id)
  end
end
