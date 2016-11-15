class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.string :invitation_number, limit: 15
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
