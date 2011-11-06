class NotesController < ApplicationController
  before_filter :find_note

  def show
  end

  def create
    @note.save
  end

  def update
    @note.update_attributes(params[:note])
    @note.save
  end
  
  def destroy
    @note.destroy
  end

  private
    def find_note
      return @note = current_user.notes.find(params[:id]) if params[:id]
      return @note = current_user.notes.build(params[:note]) if params[:note]
    end
end
