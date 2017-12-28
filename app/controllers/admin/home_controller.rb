class Admin::HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'admin/application'
  def index
    @admin_companies = Admin::Company.all
    @users = User.all
    @admin_providers = Admin::Provider.all
    @admin_products = Admin::Product.all
  end
end
