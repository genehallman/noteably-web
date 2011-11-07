class SectionsController < ApplicationController

  before_filter :find_section

  def new
    @section.content = "another, please"
    render :show
  end
  
  def show
  end

  def create
    @section.update_attributes(params[:section])
    @section.content = nil;
    @section.save
    @new_section = current_user.notes.find(params[:note_id]).sections.build
    @new_section.content = "another, please"
    
  end
  
  def update
    @section.update_attributes(params[:section])
    @section.save
    render :nothing => true
  end

  def destroy
    @section.destroy
  end

  private
    def find_section
      return @section = current_user.notes.find(params[:note_id]).sections.find(params[:id]) if params[:id]
      return @section = current_user.notes.find(params[:note_id]).sections.build(params[:section]) if params[:section]
      return @section = current_user.notes.find(params[:note_id]).sections.build
    end

end
