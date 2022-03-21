class CreateAuditions < ActiveRecord::Migration[5.2]
  def change
    create_table :auditions do |t|
      t.string :actor
      t.string :location
      t.integer :phone
      t.boolean :hired, default: false
      t.integer :role_id
      # t.belongs_to :role
      t.timestamps
    end
  end
end
