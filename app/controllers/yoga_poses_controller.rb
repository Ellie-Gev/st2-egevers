# frozen_string_literal: true

class YogaPosesController < ApplicationController
  def index
    @yoga_poses = YogaPose.order(:name)
    render :index
  end

  def show
    @yoga_pose = YogaPose.find(params[:id])
    render :show
  end

  def new 
    @yoga_pose = YogaPose.new
    render :new
  end

  def create 
    @yoga_pose = YogaPose.new(params.require(:yoga_pose).permit(:name, :part_of_body, :sanskrit))

    if @yoga_pose.save
      flash[:success] = "Yoga pose created successfully!"
      redirect_to yoga_poses_url
    else
      flash.now[:error] = "Error! Unable to create yoga pose"
      render :new, status: :unprocessable_entity
    end
  end
end
