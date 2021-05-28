class AddPostStatusToSkill < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :status, :integer, default: 0
  end
end
