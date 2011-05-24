class TemplatesController < ApplicationController
  layout "application", :only => [:index]
  def index
  end
end
