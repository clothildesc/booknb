class ChangeStatusDefaultValueInBooks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :books, :status, 'available'
  end
end
