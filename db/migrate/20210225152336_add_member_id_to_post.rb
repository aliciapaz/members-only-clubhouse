class AddMemberIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :member_id, :integer
  end
end
