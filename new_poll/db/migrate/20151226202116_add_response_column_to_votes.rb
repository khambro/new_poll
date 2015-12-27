class AddResponseColumnToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :response, :string
  end
end
