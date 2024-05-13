view: quota_metrics {
  label: "Quota Metrics"

  derived_table: {
    sql:
    select
      *,
      rank() over (PARTITION by  project_id,  quota_metric,  region
        ORDER BY  added_at   desc) as rank,
      generate_uuid() as pk
    from `TABLE`;;
  datagroup_trigger: daily_datagroup
  }

  dimension: quota_uuid {
    type: string
    sql: ${TABLE}.pk ;;
    primary_key: yes
    hidden: yes
  }

############################  Dimensions ################################ {
  dimension_group: added {
    type: time
    description: "Time at which the quota data was retrieved"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.added_at ;;
  }

  dimension: api_method {
    label: "API Method"
    type: string
    description: "Name of the api being used, only applicable to rate quotas."
    sql: ${TABLE}.api_method ;;
  }

  dimension: current_usage {
    type: number
    description: "Current usage against the quota"
    sql: ${TABLE}.current_usage ;;
  }

  dimension: limit_name {
    type: string
    description: "Name of the limit"
    sql: ${TABLE}.limit_name ;;
  }

  dimension: max_usage_raw {
    type: number
    description: "Maximum usage against the quota in the query window"
    sql: ${TABLE}.max_usage ;;
  }

  dimension: project_id {
    label: "Project ID"
    type: string
    description: "Project Id the quota metric applies to"
    sql: ${TABLE}.project_id ;;
  }

  dimension: quota_limit {
    label: "Limit"
    type: number
    description: "Quota limit for the metric"
    sql: ${TABLE}.quota_limit ;;
  }

  dimension: quota_metric {
    type: string
    description: "Quota metric"
    sql: ${TABLE}.quota_metric ;;
  }

  dimension: quota_type {
    type: string
    description: "The type of quota, ALLOCATION or RATE"
    sql: ${TABLE}.quota_type ;;
  }

  dimension: region {
    type: string
    description: "Region the quota metric applies to"
    sql: ${TABLE}.region ;;
  }

  dimension: threshold {
    type: number
    description: "Alerting threshold for the quota metric"
    sql: ${TABLE}.threshold ;;
  }

  dimension: most_recent_entry {
    type: yesno
    sql: ${TABLE}.rank = 1
    ;;
  }
  ########################## End Dimensions ############################### }
  ############################# Measures ################################## {
  measure: total_current_usage {
    description: "Sum of Current Usage"
    type: sum
    sql: ${current_usage} ;;  }

  measure: max_usage {
    type: max
    description: "Max of max usage"
    sql: ${max_usage_raw} ;;
  }

  measure: pct_current_usage {
    label: "Current Usage (%)"
    type: number
    sql: SAFE_DIVIDE(${last_current_usage}, ${quota_limit}) ;;
    value_format_name: percent_2
  }

  measure: pct_max_usage {
    label: "Max Usage (last 7 days)"
    type: number
    sql: SAFE_DIVIDE(${last_max_usage}, ${quota_limit}) ;;
    value_format_name: percent_2
  }

  measure: last_current_usage {
    description: "Most Recent Entry for Current Usage"
    type: sum
    filters: [ most_recent_entry: "Yes" ]
    sql: ${current_usage} ;;
  }

  measure: last_max_usage {
    description: "Most Recent Entry for Max Usage"
    type: sum
    filters: [ most_recent_entry: "Yes" ]
    sql: ${max_usage_raw} ;;
  }

  measure: count {
    type: count
    drill_fields: [limit_name]}
}
