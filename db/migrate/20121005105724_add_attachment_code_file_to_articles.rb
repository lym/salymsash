class AddAttachmentCodeFileToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.has_attached_file :code_file
    end
  end

  def self.down
    drop_attached_file :articles, :code_file
  end
end
