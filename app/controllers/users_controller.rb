
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @invite = if current_user.invite.present?
                current_user.invite
              else
                Invite.new(invite_params)
              end

    @invite.user_id = current_user.id if current_user
    @invite.save
  end

  private

  def invite_params
    params[:invite]
  end
end
