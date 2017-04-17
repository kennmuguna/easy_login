class CreateUsernames < ActiveRecord::Migration[5.0]
  def change
    create_table :usernames do |t|
      t.column :name, :string
      t.column :email, :string

      t.timestamps
    end
  end
end
