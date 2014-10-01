class CreateShowDontTellsEngineShowDontTells < ActiveRecord::Migration
  def change
    create_table :show_dont_tells_engine_show_dont_tells do |t|
    	t.datetime :date

    	t.timestamps
    end
  end
end
