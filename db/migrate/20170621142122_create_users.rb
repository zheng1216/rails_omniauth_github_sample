class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name
      t.string :provider
      t.string :oauth_token
      t.text   :uid
      t.string :address
    end
  end
end
