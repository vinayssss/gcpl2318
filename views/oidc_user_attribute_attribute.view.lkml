view: oidc_user_attribute_attribute {
  sql_table_name: gcpm2318.oidc_user_attribute_attribute ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: oidc_user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oidc_user_attribute_id ;;
  }
  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_attribute_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, oidc_user_attribute.id, oidc_user_attribute.name, user_attribute.id]
  }
}
