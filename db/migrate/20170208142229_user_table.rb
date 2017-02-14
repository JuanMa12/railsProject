class UserTable < ActiveRecord::Migration[5.0]
  def change
  create_table :users do |t|
        t.string :name
        t.string :last_name
        t.string :email
        t.string :password_digest
        t.datetime :last_login
        t.string :ip

        t.timestamps null: false
      end
  end
end
