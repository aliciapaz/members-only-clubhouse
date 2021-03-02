class AddUsernameToMember < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :name, :string
    add_column :members, :membername, :string
  end
end
