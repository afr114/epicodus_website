class RenameModuleTableToSyllabusTable < ActiveRecord::Migration
  def change

    rename_table :modules, :syllabuses

  end
end
