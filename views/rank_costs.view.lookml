view: top_project_costs {
  derived_table: {
    explore_source: gcp_billing_export {
      column: total_cost {}
      column: project__name {}
      filters: {
        field: gcp_billing_export.usage_start_date
        value: "1 months ago for 1 months"
      }
      bind_filters: {
        from_field: gcp_billing_export.usage_start_date
        to_field: gcp_billing_export.usage_start_date
      }
      derived_column: total_cost_rank {
        sql: row_number() over(order by total_cost desc) ;;
      }
    }
  }
  dimension: total_cost {
    label: "Billing Total Cost"
    description: ""
    value_format_name: usd_0
    type: number
    hidden: yes
  }
  dimension: project__name {
    label: "Billing Project Name"
    description: ""
    hidden: yes
  }
  dimension: total_cost_rank {
    label: "Project Cost Rank"
    type: number
    group_label: "Rank"
  }
}

view: top_service_costs {
  derived_table: {
    explore_source: gcp_billing_export {
      column: total_cost {}
      column: service__description {}
      filters: {
        field: gcp_billing_export.usage_start_date
        value: "1 months ago for 1 months"
      }
      bind_filters: {
        from_field: gcp_billing_export.usage_start_date
        to_field: gcp_billing_export.usage_start_date
      }
      derived_column: total_cost_rank {
        sql: row_number() over(order by total_cost desc) ;;
      }
    }
  }
  dimension: total_cost {
    label: "Billing Total Cost"
    description: ""
    hidden: yes
    value_format_name: usd_0
    type: number
  }
  dimension: service__description {
    label: "Service Description"
    description: ""
    hidden: yes
  }
  dimension: total_cost_rank {
    label: "Service Cost Rank"
    type: number
    group_label: "Rank"
  }
}

view: top_sku_costs {
  derived_table: {
    explore_source: gcp_billing_export {
      column: total_cost {}
      column: sku__description {}
      filters: {
        field: gcp_billing_export.usage_start_date
        value: "1 months ago for 1 months"
      }
      bind_filters: {
        from_field: gcp_billing_export.usage_start_date
        to_field: gcp_billing_export.usage_start_date
      }
      derived_column: total_cost_rank {
        sql: row_number() over(order by total_cost desc) ;;
      }
    }
  }
  dimension: total_cost {
    label: "Billing Total Cost"
    description: ""
    hidden: yes
    value_format_name: usd_0
    type: number
  }
  dimension: sku__description {
    label: "SKU Description"
    description: ""
    hidden: yes
  }
  dimension: total_cost_rank {
    label: "SKU Cost Rank"
    type: number
    group_label: "Rank"
  }
}
