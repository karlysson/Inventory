class Admin::CompaniesController < ApplicationController
  before_action :set_admin_company, only: [:show, :edit, :update, :destroy]
  layout 'admin/application'


  # GET /admin/companies
  def index
    if params[:search]
      @admin_companies = Admin::Company.search(params[:search]).order(:id).paginate(:page => params[:page], :per_page => 4)
    else
      @admin_companies = Admin::Company.all.order(:id).paginate(:page => params[:page], :per_page => 4)
    end
  end

  # GET /admin/companies/1
  def show
  end

  # GET /admin/companies/new
  def new
    @admin_company = Admin::Company.new
  end

  # GET /admin/companies/1/edit
  def edit
  end

  # POST /admin/companies
  def create
    @admin_company = Admin::Company.new(admin_company_params)

    if @admin_company.save
      redirect_to @admin_company, notice: 'Company was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/companies/1
  def update
    if @admin_company.update(admin_company_params)
      redirect_to @admin_company, notice: 'Company was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/companies/1
  def destroy
    @admin_company.destroy
    redirect_to admin_companies_url, notice: 'Company was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_company
      @admin_company = Admin::Company.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_company_params
      params.require(:admin_company).permit(:name, :active)
    end
end
