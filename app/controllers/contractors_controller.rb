class ContractorsController < ApplicationController

  def index
    @contractors = Contractor.all
  end

  def show
    @contractor = Contractor.find_by_id(params[:id])
  end

  def new
    @contractor = Contractor.new
  end

  def create
    @contractor = Contractor.new
    @contractor.business = params[:business]
    @contractor.name = params[:name]
    @contractor.type = params[:type]
    @contractor.email = params[:email]
    @contractor.phone = params[:phone]
    @contractor.address = params[:address]
    
    if @contractor.save
            redirect_to contractors_url
          else
      render 'new'
    end
  end

  def edit
    @contractor = Contractor.find_by_id(params[:id])
  end

  def update
    @contractor = Contractor.find_by_id(params[:id])
    @contractor.business = params[:business]
    @contractor.name = params[:name]
    @contractor.type = params[:type]
    @contractor.email = params[:email]
    @contractor.phone = params[:phone]
    @contractor.address = params[:address]
    
    if @contractor.save
            redirect_to contractors_url
          else
      render 'edit'
    end
  end

  def destroy
    @contractor = Contractor.find_by_id(params[:id])
    @contractor.destroy
        redirect_to contractors_url
      end
end
