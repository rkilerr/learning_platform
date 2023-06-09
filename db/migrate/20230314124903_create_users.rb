class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :password_digest
      t.string :username
      t.string :email
      t.string :user_type

      t.timestamps
    end
  end
end
