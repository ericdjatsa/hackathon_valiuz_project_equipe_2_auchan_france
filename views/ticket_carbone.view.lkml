view: ticket_carbone {
  sql_table_name: `valiuz-ghack-lil23-7136.PRODUCT2.TICKET_CARBONE` ;;

  dimension: bilan_carbone {
    label: "Bilan Carbone"
    type: number
    sql: ${TABLE}.BILAN_CARBONE ;;
  }
  dimension: brand {

    label: "Marque"
    type: string
    sql: ${TABLE}.BRAND ;;
  }
  dimension_group: date_product {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_PRODUCT ;;
  }
  dimension: fiabilite {
    label: "Fiabilité"

    type: number
    sql: ${TABLE}.FIABILITE ;;
  }
  dimension: label {
    label: "Libéllé"
    type: string
    sql: ${TABLE}.LABEL ;;
  }
  dimension: ligne_number {

    label: "Nombre de lignes"
    type: number
    sql: ${TABLE}.LIGNE_NUMBER ;;
  }
  dimension: product_id {

    label: "Identifiant décisionnel du produit"
    type: string
    sql: ${TABLE}.PRODUCT_ID ;;
  }
  dimension: product_level {
    label: "Nomenclature du Produit"
    type: string
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }
  dimension: product_uid {

    label: "Code de la nomenclature produit calculé par valiuz"
    type: string
    sql: ${TABLE}.PRODUCT_UID ;;
  }
  dimension: quantity {

    label: "Quantité"

    type: number
    sql: ${TABLE}.QUANTITY ;;
  }
  dimension: ticket_id {

    label: "Identifiant décisionnel du ticket"
    type: string
    sql: ${TABLE}.TICKET_ID ;;
  }
  dimension: ticket_uid {

    label: "Identifiant du ticket calculé par valiuz"
    type: string
    sql: ${TABLE}.TICKET_UID ;;
  }
  dimension: unitary_amount {

    label: "Prix unitaire du produit"
    type: number
    sql: ${TABLE}.UNITARY_AMOUNT ;;
  }
  measure: count {
    type: count
  }
}
