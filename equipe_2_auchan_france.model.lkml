connection: "project_equipe_2_auchan_france_connection"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: product_nomenclature {
  label: "Bilan Carbone"
  group_label: "Auchan équipe 2"
}

explore: profiles_scores_tickets_produits {

  group_label: "Auchan équipe 2"
  view_name: profiles
  join: scores {
    relationship: one_to_one
    type: inner
    sql_on: ${profiles.idclient_ens} = ${scores.idclient_ens} AND ${profiles.member} = ${scores.member} ;;
  }
  join: tickets {
    relationship: one_to_many
    type: inner
    sql_on: ${profiles.idclient_ens} = ${tickets.idclient_ens} AND ${profiles.member} = ${tickets.member} ;;
  }
  join: tickets_detailled {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets.ticket_uid} = ${tickets_detailled.product_uid} AND ${tickets_detailled.member} = ${tickets.member} AND ${tickets.date_ticket_date} = ${tickets_detailled.date_product_date} ;;
  }
  join: product_nomenclature {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets_detailled.product_uid} = ${product_nomenclature.product_uid} and ${tickets_detailled.member} = ${product_nomenclature.member} ;;
  }
}

explore: explore_hackaton{
  group_label: "Auchan équipe 2"
  label: "Explore Hackaton"
  view_name: tickets
  join: tickets_detailled {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets.ticket_uid} = ${tickets_detailled.product_uid} AND ${tickets_detailled.member} = ${tickets.member} AND ${tickets.date_ticket_date} = ${tickets_detailled.date_product_date};;
  }
  join: product_nomenclature {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets_detailled.product_uid} = ${product_nomenclature.product_uid} and ${tickets_detailled.member} = ${product_nomenclature.member} ;;
  }
  join: profiles {
    relationship: one_to_many
    type: inner
    sql_on: ${profiles.idclient_ens} = ${tickets.idclient_ens} AND ${profiles.member} = ${tickets.member} ;;
  }
  join: scores {
    relationship: one_to_one
    type: inner
    sql_on: ${profiles.idclient_ens} = ${scores.idclient_ens} AND ${profiles.member} = ${scores.member} ;;
  }
}


explore: evol_client{
  group_label: "Auchan équipe 2"
  label: "Explore Evolution Client"
  view_name: tickets
  join: tickets_detailled {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets.ticket_uid} = ${tickets_detailled.product_uid} AND ${tickets.date_ticket_date} = ${tickets_detailled.date_product_date} AND ${tickets_detailled.member} = ${tickets.member};;
  }
  join: product_nomenclature {
    relationship: one_to_many
    type: inner
    sql_on: ${tickets_detailled.product_uid} = ${product_nomenclature.product_uid} and ${tickets_detailled.member} = ${product_nomenclature.member} ;;
  }
}
