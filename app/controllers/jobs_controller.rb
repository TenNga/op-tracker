class JobsController < ApplicationController
    def index
        jobs = Job.all 

        render json: jobs
    end

    def show
        job = Job.find(params[:id])

        render json: job 
    end

    def create
        job = Job.create(job_params)

        if job.save
            render json: job
        else
            render json: {error: job.errors.full_messages}
        end
    end

    def destroy
        # byebug
        job = Job.find(params[:id])
        # byebug
        if job.destroy
            render json: {success: "Job Deleted"}
        else 
            render json: {error: job.errors.full_messages}
        end 

    end

    private 

    def job_params
        params.require(:job).permit(:company, :role, :date, :status, :link, :user_id, :note)
    end

end
