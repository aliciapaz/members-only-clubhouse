class RemoveIndexFromMember < ActiveRecord::Migration[6.1]
  def change
    remove_column :members, :index, :integer
  end
end
