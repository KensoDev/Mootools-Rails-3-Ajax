class ProjectController < ApplicationController
  def index
     @projects = Project.all
     
     @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    
    if @project.save
      flash[:notice] = "Successfully created..."
    else
      flash[:error] = "Error creating the project"
    end
    
    respond_to do |format|
      format.html { redirect_to(projects_index_url) }
      format.js
    end
  end
end