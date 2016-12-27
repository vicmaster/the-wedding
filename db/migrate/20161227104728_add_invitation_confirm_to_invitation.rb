class AddInvitationConfirmToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :invitation_confirm, :boolean
  end
end
