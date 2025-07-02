class AddUserToAnalises < ActiveRecord::Migration[8.0]
  def change
    add_reference :analises, :user, null: false, foreign_key: true
  end
end
