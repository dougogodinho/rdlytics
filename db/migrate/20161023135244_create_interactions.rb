class CreateInteractions < ActiveRecord::Migration[5.0]
  def change
    create_table :interactions do |t|
      t.belongs_to :user, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
