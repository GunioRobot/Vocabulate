class ListsWordsJoin < ActiveRecord::Migration
  def self.up
    create_table(:lists_words, :id => false) do |t|
      t.column "list_id", :integer, :null => false
      t.column "word_id", :integer, :null => false
    end
  end

  def self.down
    drop_table :lists_words
  end
end
