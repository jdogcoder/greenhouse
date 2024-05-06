# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Authenticatable

  def find_current_auditor
    nil if current_user.super_admin

    # current_user
  end

end
