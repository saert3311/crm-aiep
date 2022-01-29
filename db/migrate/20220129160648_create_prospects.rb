class CreateProspects < ActiveRecord::Migration[6.1]
  def change
    create_table :prospects do |t|
      t.string :fname
      t.string :lname
      t.string :tel
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
