class CreateWedlabs < ActiveRecord::Migration
  def change
    create_table :wedlabs do |t|

      t.timestamps
    end
  end
end
