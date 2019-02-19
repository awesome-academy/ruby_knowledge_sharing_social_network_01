# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_20_064533) do

  create_table "comment_hierarchies", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.integer "descendant_id", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "descendant_id", "generations"], name: "comment_anc_desc_udx", unique: true
    t.index ["descendant_id"], name: "comment_desc_idx"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "type"
    t.text "content"
    t.integer "post_id"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "type"
    t.text "content"
    t.integer "group_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.string "avatar_url"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "used_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "tagged_id"
    t.integer "tagged_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.integer "profile_id"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "type"
    t.integer "user_id"
    t.integer "voted_id"
    t.integer "voted_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
