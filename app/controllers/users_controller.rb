class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @invite = Invite.new(invite_params)
    @invite.user_id = current_user.id if current_user
  end

  private

  def invite_params
    params[:invite]
  end
end
