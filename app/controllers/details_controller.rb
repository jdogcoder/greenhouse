class DetailsController < ApplicationController
  include Authenticatable

  before_action :ensure_authenticated, :ensure_login_ready

  def index
  end
end
