class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by_id(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.description = params[:description]
    @project.responsible = params[:responsible]
    @project.priority = params[:priority]
    @project.status = params[:status]
    @project.due_date = params[:due_date]
    @project.reminder = params[:reminder]
    
    if @project.save
            redirect_to projects_url
          else
      render 'new'
    end
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end

  def update
    @project = Project.find_by_id(params[:id])
    @project.description = params[:description]
    @project.responsible = params[:responsible]
    @project.priority = params[:priority]
    @project.status = params[:status]
    @project.due_date = params[:due_date]
    @project.reminder = params[:reminder]
    
    if @project.save
            redirect_to projects_url
          else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
        redirect_to projects_url
      end
end
