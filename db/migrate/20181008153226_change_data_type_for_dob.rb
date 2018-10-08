class ChangeDataTypeForDob < ActiveRecord::Migration[5.0]
  def change
  	change_column :lecturer_details, :dob, :string
  end
end
