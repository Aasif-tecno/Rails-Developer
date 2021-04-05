class HomeController < ApplicationController
  def index
    @jobs = Job.published.desc
  end

  def developers
    @developer = User.developer
  end
end
