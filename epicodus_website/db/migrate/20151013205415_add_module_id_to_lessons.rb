class AddModuleIdToLessons < ActiveRecord::Migration
  def change
    add_column(:lessons, :module_id, :integer)
  end
end
