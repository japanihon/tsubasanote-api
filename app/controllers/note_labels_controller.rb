class NoteLabelsController < ApplicationController
  def create
    head :bad_request and return if note.labels.include?(label)
    note_labels = note.note_labels.new(label: label)
    if note_labels.save
      head :ok
    else
      head :bad_request
    end
  end
  
  def destroy
    note.labels.destroy(label)
  end

  private

  def label
    Label.find(params[:id])
  end

  def note
    Note.find(params[:note_id])
  end
end
