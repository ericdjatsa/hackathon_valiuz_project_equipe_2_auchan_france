view: tickets {
  sql_table_name: `prep-valiuz-ghack-lil23-7006.valiuz_entity.TICKETS` ;;
  drill_fields: [ticket_id]


  dimension: table_pk {
    label: "Primary Key (concaténation)"
    hidden:  yes
    primary_key: yes
    type: number
    value_format_name: id
    sql: CONCAT(${TABLE}.TICKET_UID, '-', ${TABLE}.MEMBER) ;;
  }

  dimension: ticket_id {
    type: string
    description: "#FK - Identifiant unique du ticket, fourni par l'enseigne."
    label: "#Identifiant unique du ticket"
    sql: ${TABLE}.TICKET_ID ;;
  }
  dimension: channel {
    type: string
    description: "Mode de vente pour le ticket, fourni par l'enseigne.(WEB, UNKNOWN, MAG, WEB|WEB|WEB, WEB|WEB, WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB|WEB, WEB|WEB|WEB|WEB|WEB, WEB|MAG, WEB|WEB|WEB|WEB|WEB|WEB|WEB|WEB, MOBILE, MAG|MAG|WEB, MAG|MAG, MAG|WEB, MAG|MAG|MAG|MAG, null)"
    label: "Mode de vente pour le ticket"
    sql: ${TABLE}.CHANNEL ;;
  }
  dimension_group: date_ticket {
    type: time
    description: "Date démission du ticket par l’enseigne, fourni par l'enseigne."
    label: "Date d'émission du ticket"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DATE_TICKET ;;
  }
  dimension: delivery_mode {
    type: string
    description: "Mode de livraison pour le ticket, fourni par l'enseigne.(POINT RELAIS, UNKNOWN, DOMICILE, DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, MAGASIN|UNKNOWN, MAGASIN, DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE|DOMICILE, null, MAGASIN_RESA, MAGASIN|POINT RELAIS, MAGASIN|MAGASIN_RESA, DOMICILE|MAGASIN, MAGASIN|MAGASIN|MAGASIN_RESA, MAGASIN|MAGASIN, POINT RELAIS|MAGASIN, MAGASIN|MAGASIN|MAGASIN|MAGASIN)"
    label: "Mode de livraison pour le ticket"
    sql: ${TABLE}.DELIVERY_MODE ;;
  }
  dimension: idclient_ens {
    type: string
    description: "#FK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne."
    label: "Identifiant client unique pour l’enseigne du client"
    sql: ${TABLE}.IDCLIENT_ENS ;;
  }
  dimension: idclient_vlz {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIE."
    label: "Identifiant client généré par Valiuz CHARLIE"
    sql: ${TABLE}.IDCLIENT_VLZ ;;
  }
  dimension: idclient_vlz_charlight {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIGHT."
    label: "Identifiant client généré par Valiuz résultant de l’algorithme CHARLIGHT."
    sql: ${TABLE}.IDCLIENT_VLZ_CHARLIGHT ;;
  }
  dimension: member {
    type: string
    description: "#FK - Trigramme correspondant au nom de l'enseigne."
    label: "Trigramme enseigne"
    sql: ${TABLE}.MEMBER ;;
  }
  dimension: pos_id {
    type: string
    description: "#FK - Identifiant du magasin présent sur le ticket, fourni par l'enseigne."
    label: "Identifiant du magasin présent sur le ticket"
    sql: ${TABLE}.POS_ID ;;
  }
  dimension: pos_name {
    type: string
    description: "Nom du magasin présent sur le ticket, fourni par l'enseigne."
    label: "Nom du magasin présent sur le ticket"
    sql: ${TABLE}.POS_NAME ;;
  }
  dimension: ticket_uid {
    type: string
    description: "#PK - Identifiant unique du ticket, calculé par Valiuz."
    label: "Identifiant unique du ticket Valiuz."
    sql: ${TABLE}.TICKET_UID ;;
  }
  dimension: year_month {
    type: number
    description: "Concaténation de l’année et du mois se trouvant dans la colonne DATE_TICKET, fournie par l’enseigne. Si la date du ticket change alors cette valeur change."
    label: "Concaténation de l’année et du mois"
    sql: ${TABLE}.YEAR_MONTH ;;
  }
  measure: count {
    type: count
    drill_fields: [ticket_id, pos_name]
  }
}
