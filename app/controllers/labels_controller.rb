class LabelsController < ApplicationController
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
      head :ok
    else
      head :bad_request
    end
  end

  def update
    label = Label.find(params[:id])
    if label.update(label_params)
      head :ok
    else
      head :bad_request
    end
  end

  def destroy
    label = Label.find(params[:id])
    if label.destroy
      head :ok
    else
      head :bad_request
    end
  end

  private

  def label_params
    params.require(:label).permit(:name, :description, :fg_color, :bg_color)
  end
end
