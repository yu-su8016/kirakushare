class ScenesController < ApplicationController
  def index
    @scenes = Scene.all
  end
  def new
    @scene = Scene.new
  end

  def create
    Scene.create!(scene_params)
  end

  def update
    @scene = Scene.find(params[:id])
  end

  def edit
    @scene = Scene.find(params[:id])
  end

  def update
    scene = Scene.find(params[:id])
    scene.update(scene_params)
  end

  private
  def scene_params
    params.require(:scene).permit(:image, :text, :area,:date).merge(user_id: current_user.id)
  end
end
