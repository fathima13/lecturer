class CreateLecturerDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :lecturer_details do |t|
      t.string :name
      t.integer :emp_no
      t.string :mobile_no
      t.string :email_id
      t.date :dob
      t.string :address

      t.timestamps
    end
  end
end
