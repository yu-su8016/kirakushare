class SeachesController < ApplicationController
  def index
    @scenes = Scene.search(params[:keyword])
  end
end
