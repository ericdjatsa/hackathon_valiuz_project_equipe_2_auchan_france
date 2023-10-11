view: profiles {
  sql_table_name: `prep-valiuz-ghack-lil23-7006.valiuz_entity.PROFILES` ;;

  dimension: table_pk {
    label: "Primary Key (concaténation)"
    hidden:  yes
    primary_key: yes
    type: number
    value_format_name: id
    sql: CONCAT(${TABLE}.IDCLIENT_ENS, '-', ${TABLE}.MEMBER) ;;
  }

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: age_vlz {
    type: string
    description: "Tranche d'âge issue du quorum Valiuz."
    label: "Tranche d'âge issue du quorum Valiuz."
    sql: ${TABLE}.AGE_VLZ ;;
  }
  dimension: count_idclient_vlz {
    type: number
    description: "Nombre d'occurrences de l'Identifiant calculé par Valiuz unique."
    label: "Nombre d'occurrences de l'Identifiant calculé par Valiuz unique."
    value_format_name: id
    sql: ${TABLE}.COUNT_IDCLIENT_VLZ ;;
  }
  dimension: count_member {
    type: number
    description: "Nombre d’enseigne dans le quel l’identifiant client Valiuz est présent."
    label: "Nombre d’enseigne dans le quel l’identifiant client Valiuz est présent."
    sql: ${TABLE}.COUNT_MEMBER ;;
  }
  dimension: gender_vlz {
    type: string
    description: "Civilité du client calculée par Valiuz."
    label: "Civilité du client calculée par Valiuz."
    sql: ${TABLE}.GENDER_VLZ ;;
  }
  dimension: has_loyalty_card {
    type: number
    description: "Indication sur la présence d'une carte de fidélité, fournie par l’enseigne. (1=OUI, 0=NON)."
    label: "Indication sur la présence d'une carte de fidélité"
    sql: ${TABLE}.HAS_LOYALTY_CARD ;;
  }
  dimension: idclient_ens {
    type: string
    description: "#PK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne."
    label: "Identifiant client unique pour l’enseigne du client"
    sql: ${TABLE}.IDCLIENT_ENS ;;
  }
  dimension: idclient_vlz {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIE."
    label: "Identifiant client généré par Valiuz résultant de l’algorithme CHARLIE."
    sql: ${TABLE}.IDCLIENT_VLZ ;;
  }
  dimension: idclient_vlz_charlight {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIGHT."
    label: "Identifiant client généré par Valiuz résultant de l’algorithme CHARLIGHT."
    sql: ${TABLE}.IDCLIENT_VLZ_CHARLIGHT ;;
  }
  dimension: idhousehold_vlz {
    type: string
    description: "#FK - Identifiant unique du foyer résultant de l’algorithme CHARLIE ."
    label: "Identifiant unique du foyer résultant de l’algorithme CHARLIE"
    sql: ${TABLE}.IDHOUSEHOLD_VLZ ;;
  }
  dimension: iris_vlz {
    type: string
    description: "Identifiant IRIS calculé par Valiuz."
    label: "Identifiant IRIS calculé par Valiuz."
    sql: ${TABLE}.IRIS_VLZ ;;
  }
  dimension: is_b2_b {
    type: number
    description: "Indication qui détermine si le client est un professionnel ('0' : client non professionnel, '1': client professionnel)."
    label: "Indication qui détermine si le client est un professionnel"
    sql: ${TABLE}.IS_B2B ;;
  }
  dimension: ishabitationverticale {
    type: string
    description: "Indication sur le type d'habitat d'une personne obtenue par un algorithme .Egale à 'V' si la personne habite en appartement."
    label: "Appartement ou Maison ? (Algo)"
    sql: ${TABLE}.ISHABITATIONVERTICALE ;;
  }
  dimension: member {
    type: string
    description: "#PK - Trigramme correspondant au nom de l'enseigne."
    label: "Trigramme correspondant au nom de l'enseigne."
    sql: ${TABLE}.MEMBER ;;
  }
  dimension: neighborhood_type_vlz {
    type: string
    description: "Concaténation du code et de la description du type de quartier, calculé par le score type de quartier Valiuz."
    label: "Concaténation du code et de la description du type de quartier"
    sql: ${TABLE}.NEIGHBORHOOD_TYPE_VLZ ;;
  }
  dimension: optin_mail {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par email, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    label: "Indication du consentement du client pour une sollicitation marketing par email"
    sql: ${TABLE}.OPTIN_MAIL ;;
  }
  dimension: optin_print {
    type: number
    description: "Indication du consentement du client pour une sollicitation marketing par courrier, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null."
    label: "Indication du consentement du client pour une sollicitation marketing par courrier"
    sql: ${TABLE}.OPTIN_PRINT ;;
  }
  dimension: optin_push_app {
    type: number
    hidden: yes
    description: "Indication du consentement du client pour une sollicitation marketing par notification dans une application, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    label: "Indication du consentement du client pour une sollicitation marketing par notification dans une application, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_PUSH_APP ;;
  }
  dimension: optin_push_web {
    type: number
    hidden: yes
    description: "Indication du consentement du client pour une sollicitation marketing par notification web, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    label: "Indication du consentement du client pour une sollicitation marketing par notification web, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_PUSH_WEB ;;
  }
  dimension: optin_sms {
    type: number
    hidden: yes
    description: "Indication du consentement du client pour une sollicitation marketing par sms, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    label: "Indication du consentement du client pour une sollicitation marketing par sms, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_SMS ;;
  }
  dimension: optin_tel {
    type: number
    hidden: yes
    description: "Indication du consentement du client pour une sollicitation marketing par téléphone, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    label: "Indication du consentement du client pour une sollicitation marketing par téléphone, fournie par l’enseigne. Si on a pas l’information alors on met la valeur à null.(1=OUI, 0=NON)"
    sql: ${TABLE}.OPTIN_TEL ;;
  }
  dimension: rectangle_vlz {
    type: string
    hidden: yes
    description: "Identifiant du rectangle INSEE calculé par Valiuz."
    label: "Identifiant du rectangle INSEE calculé par Valiuz."
    sql: ${TABLE}.RECTANGLE_VLZ ;;
  }
  dimension: tile_vlz {
    type: string
    hidden: yes
    description: "Identifiant du carreau INSEE calculé par Valiuz."
    label: "Identifiant du carreau INSEE calculé par Valiuz."
    sql: ${TABLE}.TILE_VLZ ;;
  }
  measure: count {
    type: count
  }
}
