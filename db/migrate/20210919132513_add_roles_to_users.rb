class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE TYPE user_role AS ENUM ('WellChecker', 'WellChecker Recipient', 'Organization');
    SQL
    add_column :users, :role, :user_role
  end

  def down
    remove_column :users, :role
    execute <<-SQL
      DROP TYPE user_role;
    SQL
  end
end
