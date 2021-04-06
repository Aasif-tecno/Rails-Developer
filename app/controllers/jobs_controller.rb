class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /jobs or /jobs.json
  def index
    @jobs = current_user.jobs.with_deleted.desc
    @job= current_user.jobs.build
  end

  # GET /jobs/1 or /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    @job = current_user.jobs.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs or /jobs.json
  def create
    @job = current_user.jobs.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.update status: "archived"
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def publish
    job = current_user.jobs.friendly.find(params[:id])
    job.update(status: "published",published_at: Time.now)
    flash[:notice] = "published Succesfully"
    redirect_to request.referrer  
    # redirect_to job
  end

  def unpublish
    job = current_user.jobs.friendly.find(params[:id])
    job.update(status: "pending")
    flash[:notice] = "Status changed form published to pending"
    redirect_to request.referrer  
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.require(:job).permit(:company_name, :company_website, :company_logo, :description, :company_description, :compensation_range, :compensation_type, 
        :estimated_hours, :headquarters, :link_to_apply, :price, :remote, 
        :title, :upsell_type, :years_of_experience,)
    end

    
end
