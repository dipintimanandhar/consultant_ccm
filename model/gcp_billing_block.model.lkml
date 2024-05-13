connection: "@{CONNECTION}"
label: "Google Cloud Billing"
include: "/views/*.view.lkml"
include: "/dashboards/*"
include: "/explores/*.explore.lkml"
include: "/datagroups/datagroups.lkml"
persist_with: daily_datagroup
