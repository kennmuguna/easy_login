class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.column :name_id, :integer
      t.column :user, :string
      t.column :password, :varchar

      t.timestamps
    end
  end
end
