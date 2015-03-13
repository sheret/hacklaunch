class FixProblems < ActiveRecord::Migration
  def change
  	create_table "sign_ups", force: :cascade do |t|
  	  t.string   "name"
  	  t.string   "email"
  	  t.datetime "created_at", null: false
  	  t.datetime "updated_at", null: false
  	  t.string   "city"
  	  t.string   "postal"
  	end

  	create_table "users", force: :cascade do |t|
  	  t.string   "name"
  	  t.string   "email"
  	  t.string   "login"
  	  t.datetime "created_at", null: false
  	  t.datetime "updated_at", null: false
  	end
  end
end
