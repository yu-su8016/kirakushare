class LikesController < ApplicationController
  def create
    scene_will_be_liked = Scene.find(params[:id])
    scene.likes.create(user_id: params[:user_id]) 
    redirect_to controller: "scenes", action: "index"
   end

   def destroy
    scene_will_be_unliked = Like.find(scene.id: params[:id])
    scene_will_be_unliked.delete
   end
end
