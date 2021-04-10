class HomeController < ApplicationController
  def index
    jobs = Job.published
    if params[:search].present? && params[:search][:search_text].present?
      jobs = Job.search(params[:search][:search_text])
    end
    @jobs = jobs.published.desc
    respond_to do |format|
      format.html
      format.js
    end
  end

  def developers
    @developer = User.developer
  end
end
