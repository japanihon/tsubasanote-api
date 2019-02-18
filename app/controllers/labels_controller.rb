class LabelsController < ApplicationController
  protect_from_forgery except: :create

  def index
    labels = Label.all
    render json: labels
  end

  def show
    label = Label.find(params[:id])
    render json: label
  end

  def create
    label = Label.new(label_params)
    if label.save
      render status: 200
    else
      render status: 400
    end
  end

  def update
    label = Label.find(params[:id])
    if label.update(label_params)
      render status: 200
    else
      render status: 400
    end
  end

  def destroy
    label = Label.find(params[:id])
    if label.destroy
      render status: 200
    else
      render status: 400
    end
  end

  private

  def label_params
    params.permit(:name, :description, :color)
  end
end
