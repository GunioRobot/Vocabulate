class AddSlugsToLists < ActiveRecord::Migration
  def self.up
    add_column :lists, :slug, :string
  end

  def self.down
    remove_column :lists, :slug
  end
end
