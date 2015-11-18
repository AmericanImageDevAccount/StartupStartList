class AddContactInfoToPosts < ActiveRecord::Migration
  def change
      add_column :posts, :contact_person, :string
      add_column :posts, :contact_phone, :string
      add_column :posts, :contact_email, :string
  end
end
