view: struct_demo {
  sql_table_name: looker.struct_demo ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: current_address {
    type: string
    sql: ${TABLE}.current_address ;;
  }

  dimension: employee_info {
    type: string
    sql: ${TABLE}.employee_info ;;
  }

  dimension: memorable_moments {
    type: string
    sql: ${TABLE}.memorable_moments ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: places_lived {
    type: string
    sql: ${TABLE}.places_lived ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
