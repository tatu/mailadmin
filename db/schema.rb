# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080830184608) do

  create_table "users", :force => true do |t|
    t.string   "email",      :limit => 128,                              :null => false
    t.string   "crypt",      :limit => 128, :default => "aqui password", :null => false
    t.string   "name",                                                   :null => false
    t.integer  "uid",        :limit => 11,  :default => 1000,            :null => false
    t.integer  "gid",        :limit => 11,  :default => 1000,            :null => false
    t.string   "homedir",                   :default => "/home/vmail",   :null => false
    t.string   "maildir",                   :default => "/home/vmail/",  :null => false
    t.text     "quota",                                                  :null => false
    t.string   "postfix",                   :default => "y",             :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
