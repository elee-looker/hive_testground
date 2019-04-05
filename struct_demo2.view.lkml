view: struct_demo2 {
  sql_table_name: looker.struct_demo2 ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: employee_info {
    type: string
    sql: ${TABLE}.employee_info ;;
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
