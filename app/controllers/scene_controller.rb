class SceneController < ApplicationController
  def index
    @scene = Scene.all
  end
  def new
    @scene = Scene.new
  end
  def create
    Scene.create(scene_params)
  end


  private
  def scene_params
    params.permit(:name, :image, :text)
  end

end
