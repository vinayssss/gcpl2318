view: result_maker {
  sql_table_name: gcpm2318.result_maker ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: merge_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.merge_query_id ;;
  }
  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: sql_interface_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sql_interface_query_id ;;
  }
  dimension: sql_query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sql_query_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	query.id,
	merge_query.id,
	sql_query.id,
	sql_query.model_name,
	sql_interface_query.id,
	dashboard_element.count,
	history.count,
	query_task.count,
	slug.count
	]
  }

}
