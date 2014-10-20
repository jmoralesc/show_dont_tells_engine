class ChangeDateFormatShowDontTells < ActiveRecord::Migration
  def change
  	change_column :show_dont_tells_engine_show_dont_tells, :date, :date
  end
end
