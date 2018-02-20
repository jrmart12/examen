class AddUserToRecordings < ActiveRecord::Migration[5.1]
  def change
    add_reference :recordings, :user, foreign_key: true
  end
end
