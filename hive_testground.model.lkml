connection: "hive2_test"

# include all the views
include: "*.view"

datagroup: hive_testground_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hive_testground_default_datagroup

explore: all_types {}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: struct_demo {}

explore: struct_demo2 {}

explore: users {}
