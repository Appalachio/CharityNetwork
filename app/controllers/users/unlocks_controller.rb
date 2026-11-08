# frozen_string_literal: true

class Users::UnlocksController < Devise::UnlocksController
  before_action :skip_user_authorization

  # GET /resource/unlock/new
  # def new
  #   super
  # end

  # POST /resource/unlock
  # def create
  #   super
  # end

  # GET /resource/unlock?unlock_token=abcdef
  # def show
  #   super
  # end

  protected

  # The path used after sending unlock password instructions
  # def after_sending_unlock_instructions_path_for(resource)
  #   super(resource)
  # end

  # The path used after unlocking the resource
  # def after_unlock_path_for(resource)
  #   super(resource)
  # end

  # Never perform user authorization during user authentication!
  def skip_user_authorization
    skip_verify_authorized!
  end
end
