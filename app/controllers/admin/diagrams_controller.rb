class Admin::DiagramsController < ApplicationController
  layout 'admin/application'

  def index
    %x(bundle exec erd --filename='public/diagram')
  end
end
