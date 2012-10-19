class Ec2typesController < ApplicationController
  def new
  	@ec2sizes = Ec2size.all
  	@ec2terms = Ec2term.all
  	@ec2utils = Ec2util.all
  	@ec2type = Ec2type.new

  end

  def index
  	@ec2types = Ec2type.all | []
  end

  def create
    @ec2type = Ec2type.new params[:ec2type]
    if @ec2type.save!
      flash[:notice] = "New EC2 Type created."
      redirect_to ec2types_path
    else
      flash[:error] = "Unable to save EC2 Type"
      redirect_to new_ec2type_path
    end

  end

  def destroy
    Ec2type.find(params[:id]).destroy
    redirect_to ec2types_path
  end
end
