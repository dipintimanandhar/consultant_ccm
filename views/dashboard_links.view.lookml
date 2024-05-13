view: dashboard_links {
  dimension: rendered_nav_guide {
    hidden: yes
    label: "Dashboard Navigation"
    sql: 'Dashboard Navigation' ;;
    html:
    <div style="width:100%">
      <table style="table-layout:fixed;text-align:center; font-size:16px; width:100%; color:white">
        <tr>

        <!-- FinOps Overview -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_1' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
        {% if gcp_billing_export.invoice_month._is_filtered  %}
        {% assign invoice_month_filter_value = _filters['gcp_billing_export.invoice_month'] | url_encode %}
        {% assign usage_date_filter_value = '' | url_encode %}
        {% else %}
        {% assign invoice_month_filter_value = '' | url_encode %}
        {% assign usage_date_filter_value = _filters['gcp_billing_export.usage_start_date'] | url_encode %}
        {% endif %}


        {% if gcp_billing_export.project__name._is_filtered %}
        <a href="@{db_1_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}&Invoice+Month={{invoice_month_filter_value}}&Usage+Start+Date={{usage_date_filter_value}}"target="_blank">
        {% elsif gcp_billing_export.project__id._is_filtered %}
        <a href="@{db_1_url}@{project_name_filter}={{ gcp_billing_export.project__name._value | url_encode}}&Invoice+Month={{invoice_month_filter_value}}&Usage+Start+Date={{usage_date_filter_value}}"target="_blank">
        {% else %}
         <a href="@{db_1_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}&Invoice+Month={{invoice_month_filter_value}}&Usage+Start+Date={{usage_date_filter_value}}"target="_blank">
        {% endif %}
        @{db_1_name} </a>
        </td>

        <!-- Budget Allocation & Usage -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_2' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
         {% if gcp_billing_export.project__name._is_filtered %}
        <a href="@{db_2_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}"target="_blank">
        {% elsif gcp_billing_export.project__id._is_filtered %}
        <a href="@{db_2_url}@{project_name_filter}={{ gcp_billing_export.project__name._value | url_encode}}">
        {% else %}
        <a href="@{db_2_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}"target="_blank">
        {% endif %}
        @{db_2_name} </a>
        </td>

        <!-- Cost Center Breakdown -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_3' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
        {% if gcp_billing_export.project__name._is_filtered  %}
        {% assign project_filter_value = _filters['gcp_billing_export.project__name'] | url_encode %}
        {% elsif gcp_billing_export.project__id._is_filtered %}
        {% assign project_filter_value = gcp_billing_export.project__name._value | url_encode %}
        {% else %}
        {% assign project_filter_value = _filters['gcp_billing_export.project__name'] | url_encode %}
        {% endif %}

        {% if gcp_billing_export.invoice_month._is_filtered %}
        <a href="@{db_3_url}@{project_name_filter}={{project_filter_value}}&@{invoice_month}&@{it_director}&@{billing_department}"target="_blank">
        {% else %}
        <a href="@{db_3_url}@{project_name_filter}={{project_filter_value}}&@{it_director}&@{billing_department}"target="_blank">
        {% endif %}
        @{db_3_name} </a>
        </td>

        <!-- Quota Management -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_4' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
        {% if gcp_billing_export.project__id._is_filtered  %}
        {% assign project_filter_value = _filters['gcp_billing_export.project__id'] | url_encode %}
        {% elsif gcp_billing_export.project__name._is_filtered %}
        {% assign project_filter_value = gcp_billing_export.project__id._value | url_encode %}
        {% else %}
        {% assign project_filter_value = _filters['gcp_billing_export.project__id'] | url_encode %}
        {% endif %}

        <a href="@{db_4_url}@{project_id_filter}={{project_filter_value}}&@{region_filter}"target="_blank">
        @{db_4_name} </a>
        </td>

        <!-- Showback Invoice -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_5' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
        {% if gcp_billing_export.invoice_month._is_filtered %}
         <a href="@{db_5_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}&@{invoice_month}&@{it_director}&@{billing_department}"target="_blank">
        {% else %}
        <a href="@{db_5_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}&@{it_director}&@{billing_department}"target="_blank">
        {% endif %}

        @{db_5_name} </a>
        </td>

        <!-- Recommendations -->
        <td style="word-wrap:break-word; white-space:normal; text-align:center; width:14%; background-color:
        {% if current_dashboard._parameter_value == 'db_6' %} @{primary_blue} {% else %} @{secondary_blue} {% endif %}
        ">
        <a href="@{db_6_url}@{project_name_filter}={{ _filters['gcp_billing_export.project__name'] | url_encode}}"target="_blank">
        @{db_6_name} </a>
        </td>
      </tr>
      </table>
      </div>
      ;;
  }

  parameter: current_dashboard {
    hidden: yes
    type: unquoted
    allowed_value: { value: "db_1"}
    allowed_value: { value: "db_2"}
    allowed_value: { value: "db_3"}
    allowed_value: { value: "db_4"}
    allowed_value: { value: "db_5"}
    allowed_value: { value: "db_6"}
  }
}
