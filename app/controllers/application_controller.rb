class ApplicationController < ActionController::Base
  include Clearance::Controller

  before_action :set_default_locale

  private def set_default_locale
    I18n.default_locale= :hu
  end
end
