- dashboard: quota_utilization_report
  title: Quota Utilization Report
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 718tQAJDDI4Zv1J1f4MSoe
  elements:
  - title: Quota Metrics with Highest Usage
    name: Quota Metrics with Highest Usage
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.quota_metric, quota_metrics_v5.region,
      quota_metrics_v5.quota_limit, quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage,
      quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    minimum_column_width: 75
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: percentile,
                value: 99}, mid: {type: percentile, value: 80}, min: {type: percentile,
                value: 40}}}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    listen:
      Quota Metric: quota_metrics_v5.quota_metric
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 1
    col: 0
    width: 24
    height: 8
  - title: BigQuery Query Usage - Quotas
    name: BigQuery Query Usage - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: bigquery.googleapis.com/quota/query/usage
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 159.27999999999997
      quota_metrics_v5.pct_max_usage: 79
      quota_metrics_v5.pct_current_usage: 75
      quota_metrics_v5.region: 80.99300000000005
      quota_metrics_v5.quota_limit: 104
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: minimum}}, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: [quota_metrics_v5.pct_current_usage,
          quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 9
    col: 12
    width: 12
    height: 6
  - title: Cloud Function Read Requests - Quotas
    name: Cloud Function Read Requests - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: '"cloudfunctions.googleapis.com/read_requests"'
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 15
    col: 12
    width: 12
    height: 6
  - title: Cloud Scheduler Jobs - Quotas
    name: Cloud Scheduler Jobs - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: cloudscheduler.googleapis.com/jobs
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 21
    col: 0
    width: 12
    height: 6
  - title: Cloud Monitoring Dashboard - Quotas
    name: Cloud Monitoring Dashboard - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: monitoring.googleapis.com/dashboards/count
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 21
    col: 12
    width: 12
    height: 6
  - title: DataFlow Job Count - Quotas
    name: DataFlow Job Count - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: '"dataflow.googleapis.com/job_count"'
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 27
    col: 12
    width: 12
    height: 6
  - title: IAM Service Account Count - Quotas
    name: IAM Service Account Count - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: iam.googleapis.com/quota/service-account-count
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 27
    col: 0
    width: 12
    height: 6
  - title: Routes - Quotas
    name: Routes - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: compute.googleapis.com/routes
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 33
    col: 0
    width: 12
    height: 6
  - title: Firewall - Quotas
    name: Firewall - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: compute.googleapis.com/firewalls
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.1}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 33
    col: 12
    width: 12
    height: 6
  - title: PubSub Regional Push Subscriber - Quotas
    name: PubSub Regional Push Subscriber - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: pubsub.googleapis.com/regionalpushsubscriber
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: minimum}}, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: [quota_metrics_v5.pct_current_usage,
          quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 15
    col: 0
    width: 12
    height: 6
  - title: Compute Instances - Quotas
    name: Compute Instances - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: compute.googleapis.com/instances
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: minimum}}, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: [quota_metrics_v5.pct_current_usage,
          quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 39
    col: 12
    width: 12
    height: 6
  - title: Networks - Quotas
    name: Networks - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: compute.googleapis.com/networks
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 189.27999999999997
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.07}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 39
    col: 0
    width: 12
    height: 6
  - title: Compute Total SSD Storage - Quotas
    name: Compute Total SSD Storage - Quotas
    model: gcp_billing_block
    explore: quota_metrics_v5
    type: looker_grid
    fields: [quota_metrics_v5.project_id, quota_metrics_v5.region, quota_metrics_v5.quota_limit,
      quota_metrics_v5.total_current_usage, quota_metrics_v5.last_max_usage, quota_metrics_v5.pct_current_usage,
      quota_metrics_v5.pct_max_usage, quota_metrics_v5.quota_metric]
    filters:
      quota_metrics_v5.most_recent_entry: 'Yes'
      quota_metrics_v5.quota_metric: '"compute.googleapis.com/ssd_total_storage"'
    sorts: [quota_metrics_v5.pct_current_usage desc, quota_metrics_v5.pct_max_usage
        desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      quota_metrics_v5.quota_metric: 254
      quota_metrics_v5.project_id: 167.27999999999997
      quota_metrics_v5.last_max_usage: 93
      quota_metrics_v5.total_current_usage: 96
      quota_metrics_v5.quota_limit: 91
      quota_metrics_v5.pct_current_usage: 87
      quota_metrics_v5.pct_max_usage: 90
      quota_metrics_v5.region: 105.26499999999999
    series_cell_visualizations:
      quota_metrics_v5.total_current_usage:
        is_active: false
    series_text_format:
      quota_metrics_v5.region:
        align: center
      quota_metrics_v5.quota_limit:
        align: center
      quota_metrics_v5.total_current_usage:
        align: center
      quota_metrics_v5.last_max_usage:
        align: center
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#F37F00",
        font_color: !!null '', color_application: {collection_id: az-company-colors,
          custom: {id: 53c6effe-f2f2-813a-60ef-c983427c45a0, label: Custom, type: continuous,
            stops: [{color: green, offset: 0}, {color: yellow, offset: 50}, {color: red,
                offset: 100}]}, options: {steps: 5, constraints: {max: {type: maximum},
              mid: {type: percentile, value: 80}, min: {type: number, value: 0.07}},
            stepped: true}}, bold: false, italic: false, strikethrough: false, fields: [
          quota_metrics_v5.pct_current_usage, quota_metrics_v5.pct_max_usage]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [quota_metrics_v5.quota_metric]
    listen:
      Project ID: quota_metrics_v5.project_id
      Project Region: quota_metrics_v5.region
    row: 9
    col: 0
    width: 12
    height: 6
  - title: Dashboard Navigation
    name: Dashboard Navigation
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [dashboard_links.rendered_nav_guide]
    filters:
      dashboard_links.current_dashboard: db^_4
      gcp_billing_export.usage_start_date: 2 days
    sorts: [dashboard_links.rendered_nav_guide]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Billing Projects
      value_format:
      value_format_name:
      based_on: gcp_billing_export.project__id
      _kind_hint: measure
      measure: billing_projects
      type: count_distinct
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Project ID: gcp_billing_export.project__id
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Project ID
    title: Project ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: quota_metrics_v5
    listens_to_filters: []
    field: quota_metrics_v5.project_id
  - name: Project Region
    title: Project Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: quota_metrics_v5
    listens_to_filters: []
    field: quota_metrics_v5.region
  - name: Quota Metric
    title: Quota Metric
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: quota_metrics_v5
    listens_to_filters: []
    field: quota_metrics_v5.quota_metric
