view: tickets_detailled {
  sql_table_name: `prep-valiuz-ghack-lil23-7006.valiuz_entity.TICKETS_DETAILLED` ;;


  dimension: table_pk {
    label: "Primary Key (concaténation)"
    hidden:  yes
    primary_key: yes
    type: number
    value_format_name: id
    sql: CONCAT(${TABLE}.LIGNE_NUMBER, '-', ${TABLE}.MEMBER '-', ${TABLE}.TICKET_UID) ;;
  }

  dimension: brand {
    type: string
    description: "Marque du produit, fourni par l'enseigne et identique à la table product_nomenclature."
    label: "Marque du produit"
    sql: ${TABLE}.BRAND ;;
  }
  dimension: channel {
    type: string
    description: "Mode de vente pour le ticket, fourni par l'enseigne.(WEB, UNKNOWN, MAG, WEB|WEB|WEB, WEB|WEB, WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB, WEB|MAG, WEB|WEB|WEB|WEB|WEB|WEB|WEB|WEB, MOBILE, MAG|MAG|WEB, MAG|MAG, MAG|WEB, MAG|MAG|MAG|MAG, null)"
    label: "Mode de vente pour le ticket"
    sql: ${TABLE}.CHANNEL ;;
  }
  dimension_group: date_product {
    type: time
    description: "Date d'achat du produit, fournie par l’enseigne."
    label: "Date d'achat du produit"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_PRODUCT ;;
  }
  dimension: delivery_mode {
    type: string
    description: "Mode de livraison pour le ticket, fourni par l'enseigne.(POINT RELAIS, UNKNOWN, DOMICILE, DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, MAGASIN|UNKNOWN, MAGASIN, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, null, MAGASIN_RESA, MAGASIN|POINT RELAIS, MAGASIN|MAGASIN_RESA, DOMICILE|MAGASIN, MAGASIN|MAGASIN|MAGASIN_RESA, MAGASIN|MAGASIN, POINT RELAIS|MAGASIN, MAGASIN|MAGASIN|MAGASIN|MAGASIN)"
    label: "Mode de livraison pour le ticket"
    sql: ${TABLE}.DELIVERY_MODE ;;
  }
  dimension: is_discount {
    type: yesno
    description: "Définition cible, Indication qui détermine si le produit est remisé (True: il y a une promotion)"
    label: "Remise"
    sql: ${TABLE}.IS_DISCOUNT ;;
  }
  dimension: label {
    type: string
    description: "Libellé du produit, fourni par l'enseigne et identique à la table product_nomenclature."
    label: "Libellé du produit"
    sql: ${TABLE}.LABEL ;;
  }
  dimension: ligne_number {
    type: number
    description: "#PK - Numéro de ligne dans un ticket, fourni par l’enseigne ou calculé par Valiuz."
    label: "Numéro de ligne dans un ticket"
    sql: ${TABLE}.LIGNE_NUMBER ;;
  }
  dimension: member {
    type: string
    description: "Trigramme correspondant au nom de l'enseigne."
    label: "Trigramme de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }
  dimension: product_id {
    type: string
    description: "Identifiant unique d'un produit, fourni par l'enseigne."
    label: "Identifiant unique d'un produit"
    sql: ${TABLE}.PRODUCT_ID ;;
  }
  dimension: product_level {
    type: string
    description: "Nomenclature du produit, fournie par l’enseigne et identique à la table product_nomenclature."
    label: "Nomenclature du produit"
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }
  dimension: product_level_id {
    type: string
    description: "Code de la nomenclature produit."
    label: "Code de la nomenclature produit."
    sql: ${TABLE}.PRODUCT_LEVEL_ID ;;
  }
  dimension: product_uid {
    type: string
    description: "#PK - Identifiant unique d'un produit. Attention, pour le MEMBER='KIA', le product_id désigne une référence, et pas une référence-coloris-taille. Bug connu en cours de résolution côté enseigne."
    label: "Identifiant unique d'un produit valiuz"
    sql: ${TABLE}.PRODUCT_UID ;;
  }
  dimension: quantity {
    type: number
    description: "Quantité vendue par produit."
    label: "Quantité vendue par produit."
    sql: ${TABLE}.QUANTITY ;;
  }
  dimension: ticket_id {
    type: string
    description: "Identifiant unique du ticket, fourni par l'enseigne."
    label: "Identifiant unique du ticket"
    sql: ${TABLE}.TICKET_ID ;;
  }
  dimension: ticket_uid {
    type: string
    description: "#PK - Identifiant unique du ticket, calculé par Valiuz."
    label: "Identifiant unique du ticket valiuz"
    sql: ${TABLE}.TICKET_UID ;;
  }
  dimension: unitary_amount {
    type: number
    description: "Prix unitaire du produit."
    label: "Prix unitaire du produit."
    sql: ${TABLE}.UNITARY_AMOUNT ;;
  }
  dimension: year_month {
    type: number
    description: "Concaténation de l’année et du mois se trouvant dans la colonne DATE_TICKET, fournie par l’enseigne.\nSi la date du ticket change alors cette valeur change."
    label: "Concaténation de l’année et du mois"
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
  }
}
