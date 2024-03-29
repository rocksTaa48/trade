# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name,               null: false
      t.string :email,              null: false, default: "", index: {unique:  true}
      t.string :encrypted_password, null: false, default: ""
      t.string :phone,              index: {unique: true}
      t.string :reset_password_token, index: {unique:  true}
      t.string :img_url
      t.boolean :admin, default: false
      t.boolean :seller, default: false
      t.string  :country
      t.string  :city
      t.string  :zip_code
      t.integer :buys_count, default: 0, null: false
      t.integer :solds_count, default: 0, null: false
      t.integer :likes_count, default: 0, null: false

      t.datetime :reset_password_sent_at

      t.datetime :remember_created_at

      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      t.timestamps null: false
    end
  end
end
