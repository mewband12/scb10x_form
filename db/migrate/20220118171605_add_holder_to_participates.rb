class AddHolderToParticipates < ActiveRecord::Migration[6.1]
  def change
    add_column :participates, :holder, :string
  end
end
