class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.invite
      @invite = current_user.invite
      @invite.user_id = current_user.id if current_user
      @invite.save
    else
      @invite = Invite.new(invite_params)
    end
  end

  private

  def invite_params
    params[:invite]
  end
end
