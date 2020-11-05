class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :full_name
      t.string :uid
      t.string :avatar_url

      t.timestamps
    end

    add_index :admins, :email, unique: true
  end
end
