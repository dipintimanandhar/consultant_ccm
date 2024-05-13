- dashboard: recommendations_summary
  title: Recommendations Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: zjQ4i75MAIaqrx6GlQzreb
  elements:
  - title: Number of Recommendations
    name: Number of Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count, recommendations_export.total_savings]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [recommendations_export.total_savings]
    defaults_version: 1
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 1
    col: 0
    width: 7
    height: 4
  - title: Total Monthly Savings
    name: Total Monthly Savings
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count, recommendations_export.total_savings]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [recommendations_export.count]
    defaults_version: 1
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 1
    col: 7
    width: 7
    height: 4
  - title: Number of P1 Recommendations
    name: Number of P1 Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count]
    filters:
      recommendations_export.priority: P1
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 1
    col: 14
    width: 5
    height: 2
  - title: Number of P2 Recommendations
    name: Number of P2 Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count]
    filters:
      recommendations_export.priority: P2
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 1
    col: 19
    width: 5
    height: 2
  - title: Number of P4 Recommendations
    name: Number of P4 Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count]
    filters:
      recommendations_export.priority: P4
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 3
    col: 19
    width: 5
    height: 2
  - title: Number of P3 Recommendations
    name: Number of P3 Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: single_value
    fields: [recommendations_export.count]
    filters:
      recommendations_export.priority: P3
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 3
    col: 14
    width: 5
    height: 2
  - title: Recommendations by SubType
    name: Recommendations by SubType
    model: gcp_billing_block
    explore: recommendations_export
    type: looker_pie
    fields: [recommendations_export.recommender_subtype, recommendations_export.count]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 5
    col: 0
    width: 8
    height: 7
  - title: Recommendations by Service
    name: Recommendations by Service
    model: gcp_billing_block
    explore: recommendations_export
    type: looker_pie
    fields: [recommendations_export.count, recommendations_export.service]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 5
    col: 8
    width: 8
    height: 7
  - title: Recommendations by Region
    name: Recommendations by Region
    model: gcp_billing_block
    explore: recommendations_export
    type: looker_pie
    fields: [recommendations_export.count, recommendations_export.location]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 5
    col: 16
    width: 8
    height: 7
  - title: All Recommendations
    name: All Recommendations
    model: gcp_billing_block
    explore: recommendations_export
    type: looker_grid
    fields: [recommendations_export.project_name, recommendations_export.primary_impact__category,
      recommendations_export.service, recommendations_export.last_refresh_date, recommendations_export.location,
      recommendations_export.description, recommendations_export.total_savings]
    sorts: [recommendations_export.total_savings desc]
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
    enable_conditional_formatting: false
    header_text_alignment: left
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
      recommendations_export.last_refresh_date: 154
      recommendations_export.service: 148
      recommendations_export.primary_impact__category: 197.73000000000002
      recommendations_export.description: 709
      recommendations_export.location: 199
    series_cell_visualizations:
      recommendations_export.total_savings:
        is_active: true
    series_text_format:
      recommendations_export.last_refresh_date:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields:
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Primary Impact Category: recommendations_export.primary_impact__category
      Project Name: recommendations_export.project_name
      Recommender Subtype: recommendations_export.recommender_subtype
    row: 12
    col: 0
    width: 24
    height: 8
  - title: New Tile
    name: New Tile
    model: gcp_billing_block
    explore: gcp_billing_export
    type: single_value
    fields: [dashboard_links.rendered_nav_guide]
    filters:
      dashboard_links.current_dashboard: db^_6
      gcp_billing_export.usage_start_date: 2 days
      gcp_billing_export.project__name: ''
      gcp_billing_export.it_director: ''
      gcp_billing_export.billing_account_id: ''
      gcp_billing_export.year: ''
      gcp_billing_export.period: ''
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Primary Impact Category
    title: Primary Impact Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: gcp_billing_block
    explore: recommendations_export
    listens_to_filters: []
    field: recommendations_export.primary_impact__category
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: gcp_billing_block
    explore: recommendations_export
    listens_to_filters: []
    field: recommendations_export.project_name
  - name: Recommender Subtype
    title: Recommender Subtype
    type: field_filter
    default_value: -"PROJECT_SCOPED_COMMITMENTS"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gcp_billing_block
    explore: recommendations_export
    listens_to_filters: []
    field: recommendations_export.recommender_subtype
