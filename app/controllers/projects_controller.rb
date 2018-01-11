class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action { require_feature! 'cs56_projects' }
  before_action :set_project, only: [:show]

  def index
    @projects_org = Setting["projects_org"]
    @repos = machine_octokit.org_repos(@projects_org)
  end

  # GET /assignments/foo-bar
  # GET /assignments/foo-bar.json
  
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @assignment = machine_octokit.repo("#{course_org_name}/#{params[:id]}")
    end

end
