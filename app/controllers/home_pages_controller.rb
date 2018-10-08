class HomePagesController < ApplicationController
  def index
  	@lec = LecturerDetail.all
  end
  def new
  	@lec = LecturerDetail.new
  end
  def create
  	@lec = LecturerDetail.new
  	@lec.name = params[:lecturer_detail][:name]
  	@lec.emp_no = params[:lecturer_detail][:emp_no]
  	@lec.mobile_no = params[:lecturer_detail][:mobile_no]
  	@lec.email_id = params[:lecturer_detail][:email_id]
  	@lec.dob = params[:lecturer_detail][:dob]
  	@lec.address = params[:lecturer_detail][:address]
  	@lec.save
  	redirect_to home_pages_url
  end
  def show
  	@lec = LecturerDetail.find(params[:id])
  end
  def edit
  	@lec = LecturerDetail.find(params[:id])	
  end
  def update
  	@lec = LecturerDetail.find(params[:id])
	@lec.name = params[:lecturer_detail][:name]
  	@lec.emp_no = params[:lecturer_detail][:emp_no]
  	@lec.mobile_no = params[:lecturer_detail][:mobile_no]
  	@lec.email_id = params[:lecturer_detail][:email_id]
  	@lec.dob = params[:lecturer_detail][:dob]
  	@lec.address = params[:lecturer_detail][:address]
  	@lec.save
  	redirect_to home_pages_url	  	
  end
  def destroy
  	@lec = LecturerDetail.find(params[:id])
  	@lec.destroy
  	redirect_to home_pages_url
  end
end
