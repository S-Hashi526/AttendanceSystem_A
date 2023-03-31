class InsertInitialUsers < ActiveRecord::Migration[5.1]
  class Initial < ApplicationRecord
  end
  
  def up
    initial = Initial.create!

    user_data = [
      {
        name: "管理者",
        email: "sample@email.com",
        employee_number: "0001",
        uid: "0001",
        password: "password",
        password_confirmation: "password",
        admin: true,
        superior: false
      },
      {
        name: "上長A",
        email: "superior-a@email.com",
        employee_number: "1001",
        uid: "1001",
        password: "password",
        password_confirmation: "password",
        admin: false,
        superior: true
      },
      {
        name: "上長B",
        email: "superior-b@email.com",
        employee_number: "1002",
        uid: "1002",
        password: "password",
        password_confirmation: "password",
        admin: false,
        superior: true
      }
    ]

    User.create!(user_data)
  end

  def down
    Initial.destroy_all
    User.destroy_all
  end
end
