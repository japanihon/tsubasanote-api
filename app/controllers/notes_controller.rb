class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  def create
    note = Note.new(note_params)
    if note.save
      head :ok
    else
      head :bad_request
    end
  end

  def update
    note = Note.find(params[:id])
    if note.updata(note_params)
      head :ok
    else
      head :bad_request
    end
  end

  def destroy
    note = Note.find(params[:id])
    if note.destroy
      head :ok
    else
      head :bad_request
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :content)
  end

end
