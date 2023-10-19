view: version_set {
  sql_table_name: gcpm2318.version_set ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: current_version {
    type: string
    sql: ${TABLE}.current_version ;;
  }
  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }
  dimension: versions {
    type: string
    sql: ${TABLE}.versions ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.count]
  }
}
