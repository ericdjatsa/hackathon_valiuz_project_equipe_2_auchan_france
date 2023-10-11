view: product_nomenclature {
  sql_table_name: `valiuz-ghack-lil23-7136.PRODUCT2.PRODUCT_NOMENCLATURE` ;;


  dimension: table_pk {
    label: "Primary Key (concaténation)"
    hidden:  yes
    primary_key: yes
    type: number
    value_format_name: id
    sql: CONCAT(${TABLE}.PRODUCT_UID, '-', ${TABLE}.MEMBER) ;;
  }
  dimension: bilan_carbone {
    label: "Bilan Carbone"
    type: number
    sql: ${TABLE}.BILAN_CARBONE ;;
  }

  dimension: fiabilite {
    label: "Fiabilité"
    type: number
    sql: ${TABLE}.FIABILITE ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Article Code" in Explore.

  dimension: article_code {
    type: string
    description: "Code de l'article, fourni par l'enseigne. Un article correspond en général à un produit, une taille et une couleur."
    label: "Code de l'article"
    sql: ${TABLE}.ARTICLE_CODE ;;
  }

  dimension: article_label {
    type: string
    description: "Libellé de l'article, fourni par l’enseigne."
    label: "Libellé de l'article"
    sql: ${TABLE}.ARTICLE_LABEL ;;
  }

  dimension: brand {
    type: string
    description: "Libellé de la marque du produit, fourni par l’enseigne."
    label: "Libellé de la marque du produit"
    sql: ${TABLE}.BRAND ;;
  }

  dimension: brand_type {
    type: string
    description: "Libellé du type de marque, fourni par l’enseigne."
    label: "Libellé du type de marque"
    sql: ${TABLE}.BRAND_TYPE ;;
  }

  dimension: department {
    type: string
    description: "Libellé du département associé au produit (sous catégorie de l'univers), fourni par l’enseigne."
    label: "Libellé du département associé au produit"
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: member {
    type: string
    description: "Trigramme correspondant au nom de l'enseigne."
    label: "Trigramme correspondant au nom de l'enseigne"
    sql: ${TABLE}.MEMBER ;;
  }

  dimension: product_code {
    type: string
    description: "Code produit, fourni par l’enseigne."
    label: "Code produit"
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_code_web {
    type: string
    description: "Nomenclature web du produit, fournie par l’enseigne."
    label: "Nomenclature web du produit"
    sql: ${TABLE}.PRODUCT_CODE_WEB ;;
  }

  dimension_group: product_end {
    type: time
    description: "Date de fin de commercialisation du produit, fournie par l’enseigne."
    label: "Date de fin de commercialisation du produit"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PRODUCT_END_DATE ;;
  }

  dimension: product_family {
    type: string
    description: "Libellé de la famille de produit, fourni par l’enseigne."
    label: "Libellé de la famille de produit"
    sql: ${TABLE}.PRODUCT_FAMILY ;;
  }

  dimension: product_level {
    type: string
    description: "Nomenclature du produit, fournie par l’enseigne."
    label: "Nomenclature du produit"
    sql: ${TABLE}.PRODUCT_LEVEL ;;
  }

  dimension_group: product_start {
    type: time
    description: "Date de début de commercialisation du produit, fournie par l’enseigne."
    label: "Date de début de commercialisation du produit"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.PRODUCT_START_DATE ;;
  }

  dimension: product_sub_family {
    type: string
    description: "Libellé de la sous catégorie de la famille du produit, fourni par l’enseigne."
    label: "Libellé de la sous catégorie de la famille du produit"
    sql: ${TABLE}.PRODUCT_SUB_FAMILY ;;
  }

  dimension: product_uid {
    type: string
    description: "#PK - Identifiant unique d'un produit. Attention, pour le MEMBER='KIA', le product_id désigne une référence, et pas une référence-coloris-taille. Bug connu en cours de résolution côté enseigne."
    label: "Identifiant unique d'un produit"
    sql: ${TABLE}.PRODUCT_UID ;;
  }

  dimension: side_info {
    type: string
    description: "Informations complémentaires liées au produit, fournies par l’enseigne."
    label: "Informations complémentaires liées au produit"
    sql: ${TABLE}.SIDE_INFO ;;
  }

  dimension: size {
    type: string
    description: "Taille du produit si le produit est un vêtement, fournie par l’enseigne."
    label: "Taille du produit si vêtement"
    sql: ${TABLE}.SIZE ;;
  }

  dimension: sub_department {
    type: string
    description: "Libellé du sous département associé au produit (sous catégorie du département), fourni par l’enseigne."
    label: "Libellé du sous département associé au produit"
    sql: ${TABLE}.SUB_DEPARTMENT ;;
  }

  dimension: supplier {
    type: string
    description: "Libellé du fournisseur, fourni par l’enseigne."
    label: "Libellé du fournisseur"
    sql: ${TABLE}.SUPPLIER ;;
  }

  dimension: universe {
    type: string
    description: "Libellé de l'univers associé au produit, fourni par l’enseigne."
    label: "Libellé de l'univers associé au produit"
    sql: ${TABLE}.UNIVERSE ;;
  }

  measure: count {
    type: count
  }
}
