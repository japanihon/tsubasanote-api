class NoteLabelsController < ApplicationController
  def update
    note.labels << label
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
