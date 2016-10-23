class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.belongs_to :user, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
