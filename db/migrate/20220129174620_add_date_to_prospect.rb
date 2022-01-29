class AddDateToProspect < ActiveRecord::Migration[6.1]
  def change
    add_column :prospects, :date, :date
  end
end
