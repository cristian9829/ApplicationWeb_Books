class ApplicationController < ActionController::Base
  before_action :log_request, only: [:new, :create]
	before_action :log_request, except: [:index]

  private
  def log_request
    puts "Ha iniciado una petición"
  end
end
