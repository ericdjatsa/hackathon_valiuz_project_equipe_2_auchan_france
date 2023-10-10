view: ticket_carbone {
  sql_table_name: `valiuz-ghack-lil23-7136.PRODUCT2.TICKET_CARBONE` ;;

  dimension: bilan_carbone {
    type: number
    sql: ${TABLE}.BILAN_CARBONE ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.BRAND ;;
  }
  dimension_group: date_product {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_PRODUCT ;;
  }
  dimension: fiabilite {
    type: number
    sql: ${TABLE}.FIABILITE ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.LABEL ;;
  }
  dimension: ligne_number {
    type: number
    sql: ${TABLE}.LIGNE_NUMBER ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.PRODUCT_ID ;;
  }
  dimension: product_level {
    type: string
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }
  dimension: product_uid {
    type: string
    sql: ${TABLE}.PRODUCT_UID ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.QUANTITY ;;
  }
  dimension: ticket_id {
    type: string
    sql: ${TABLE}.TICKET_ID ;;
  }
  dimension: ticket_uid {
    type: string
    sql: ${TABLE}.TICKET_UID ;;
  }
  dimension: unitary_amount {
    type: number
    sql: ${TABLE}.UNITARY_AMOUNT ;;
  }
  measure: count {
    type: count
  }
}
