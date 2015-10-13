class RenameModuleIdColumn < ActiveRecord::Migration
  def change
    rename_column :lessons, :module_id, :syllabus_id
  end
end
