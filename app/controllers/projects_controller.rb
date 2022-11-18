class ProjectsController < ApplicationController
  before_action :find_projects, only: :dashboard

  def dashboard; end

  def create
    Project.new(project_params)
  end

  private

  def find_projects
    @projects = current_user.projects
  end

  def project_params
    params.permit(:name,
                  :start_date,
                  :completion_date,
                  :description)
  end
end
