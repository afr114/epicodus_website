class CreateModules < ActiveRecord::Migration
  def change
    create_table :modules do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
