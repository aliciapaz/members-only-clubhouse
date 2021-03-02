class AddIndexToMember < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :index, :integer
  end
end
