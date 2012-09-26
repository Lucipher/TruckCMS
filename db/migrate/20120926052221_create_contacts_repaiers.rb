class CreateContactsRepaiers < ActiveRecord::Migration
  def change
    create_table :contacts_repaiers do |t|
      t.string :name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
