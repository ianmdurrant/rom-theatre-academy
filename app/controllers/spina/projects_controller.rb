module Spina
  class ProjectsController < ::Spina::ApplicationController
    before_action :set_page

    layout "layouts/default/application"

    def index
      @projects = Spina::Project.all
    end

    def show
      @project = Spina::Project.friendly.find(params[:id])
      @related_projects = Spina::Project.all.reject{ |p| p == @project }.first(2)
    end

    private

    def set_page
      @page = Spina::Page.find_or_create_by name: 'case_studies' do |page|
        page.link_url = '/case-studies'
        page.title = 'Case Studies'
        page.view_template = 'show'
        page.deletable = false
      end
    end
  end
end
