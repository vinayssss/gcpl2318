view: scheduled_plan {
  sql_table_name: gcpm2318.scheduled_plan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: crontab {
    type: string
    sql: ${TABLE}.crontab ;;
  }
  dimension: custom_url_base {
    type: string
    sql: ${TABLE}.custom_url_base ;;
  }
  dimension: custom_url_label {
    type: string
    sql: ${TABLE}.custom_url_label ;;
  }
  dimension: custom_url_params {
    type: string
    sql: ${TABLE}.custom_url_params ;;
  }
  dimension: dashboard_filters {
    type: string
    sql: ${TABLE}.dashboard_filters ;;
  }
  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }
  dimension: dashboard_slug {
    type: string
    sql: ${TABLE}.dashboard_slug ;;
  }
  dimension: datagroup {
    type: string
    sql: ${TABLE}.datagroup ;;
  }
  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }
  dimension: filters_string {
    type: string
    sql: ${TABLE}.filters_string ;;
  }
  dimension: include_links {
    type: yesno
    sql: ${TABLE}.include_links ;;
  }
  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }
  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.lookml_dashboard_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: next_run_at {
    type: number
    sql: ${TABLE}.next_run_at ;;
  }
  dimension: pdf_landscape {
    type: yesno
    sql: ${TABLE}.pdf_landscape ;;
  }
  dimension: pdf_paper_size {
    type: string
    sql: ${TABLE}.pdf_paper_size ;;
  }
  dimension: prewarm_only {
    type: yesno
    sql: ${TABLE}.prewarm_only ;;
  }
  dimension: query_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.query_id ;;
  }
  dimension: require_change {
    type: yesno
    sql: ${TABLE}.require_change ;;
  }
  dimension: require_no_results {
    type: yesno
    sql: ${TABLE}.require_no_results ;;
  }
  dimension: require_results {
    type: yesno
    sql: ${TABLE}.require_results ;;
  }
  dimension: run_as_recipient {
    type: yesno
    sql: ${TABLE}.run_as_recipient ;;
  }
  dimension: run_once {
    type: yesno
    sql: ${TABLE}.run_once ;;
  }
  dimension: send_all_results {
    type: yesno
    sql: ${TABLE}.send_all_results ;;
  }
  dimension: show_custom_url {
    type: yesno
    sql: ${TABLE}.show_custom_url ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	user.first_name,
	user.last_name,
	user.dev_mode_user_id,
	user.dev_branch_name,
	look.id,
	dashboard.id,
	query.id,
	scheduled_job.count,
	scheduled_plan_destination.count,
	scheduled_render_properties.count
	]
  }

}
