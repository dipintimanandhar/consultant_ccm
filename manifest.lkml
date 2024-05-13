################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "instance.billing.gcp_billing_export_public"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "instance.billing.cloud_pricing_export"
  export: override_optional
}

constant: CONNECTION {
  value: "bq-connection"
  export: override_optional
}
############################################################## }
#####################   Dashboard Links  ##################### {

#####################   Dashboard URLs  ##################### {
constant: db_1_url {
  # FinOps Overview
  value: "/dashboards/48?"
}
constant: db_2_url {
  # Budget Allocation & Usage
  value: "/dashboards/63?"
}
constant: db_3_url {
  # Cost Center Breakdown
  value: "/dashboards/64?"
}
constant: db_4_url {
  # Quota Monitoring
  value: "/dashboards/62?"
}
constant: db_5_url {
  # Showback Invoice
  value: "/dashboards/76?"
}
constant: db_6_url {
  # Recommendations
value: "/dashboards/68?"
}
constant: db_1_name {
  # FinOps Overview
  value: "FinOps Overview"
}
constant: db_2_name {
  # Budget Allocation & Usage
  value: "Budget Allocation & Usage"
}
constant: db_3_name {
  # Cost Center Breakdown
  value: "Cost Center Breakdown"
}
constant: db_4_name {
  # Quota Monitoring
  value: "Quota Monitoring"
}
constant: db_5_name {
  # Showback Invoice
  value: "Showback Invoice"
}
constant: db_6_name {
  # Recommendations
  value: "Recommendations"
}
############################################################## }
###################### Dashboard Filters   ################### {
constant: project_id_filter {
  value: "Project+ID"
}
constant: project_name_filter {
  value: "Project+Name"
}
constant: region_filter {
  value: "Project+Region={{_filters['gcp_billing_export.location__region'] | url_encode}}"
}
constant: invoice_month {
  value: "Invoice+Month={{ _filters['gcp_billing_export.invoice_month'] | url_encode}}"
}
constant: invoice_month_default {
  value: "Invoice+Month=1+month+ago+for+1+month"
}


############################################################## }
############################################################## }
#########################    Color    ######################## {
constant: primary_blue {
  #value: "#003963"
  value: "#dfe6f0"
}

constant: secondary_blue {
  #value: "#008DD1"
  value: "#FFFFFF"
}

############################################################## }
