class HomeController < ApplicationController
  def index
    @jobs = Job.all
  end

  def developers
    @developer = User.developer
  end
end
