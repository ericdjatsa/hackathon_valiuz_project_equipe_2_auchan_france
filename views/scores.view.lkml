view: scores {
  sql_table_name: `prep-valiuz-ghack-lil23-7006.valiuz_entity.SCORES` ;;

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
  dimension: birthdate {
    type: string
    description: "Tranche d'âge du client"
    label: "Tranche d'âge du client"
    sql: ${TABLE}.BIRTHDATE ;;
  }
  dimension: crosscanal_12 {
    type: string
    description: "Type d'omnicanalité client vision membre et Valiuz. Déclinaison par période : _12 sur les 12 derniers mois, _24 sur les 24 derniers mois, _36 sur les 36 derniers mois, _12_24 entre il y a 12 et 24 mois, _24_36 entre il y a 24 et 36 mois. Modalités: Non scorable, Non scoré -\u003e -1, P1 - DIGIT, P2 - WEB, P3 - STORE, P4 - STOREDIGIT, P5 - STORESA, P6 - CROSS, P7 - CROSSDEVICE"
    label: "Type d'omnicanalité client vision membre et Valiuz"
    sql: ${TABLE}.CROSSCANAL_12 ;;
  }
  dimension: crosscanal_12_24 {
    type: string
    sql: ${TABLE}.CROSSCANAL_12_24 ;;
  }
  dimension: crosscanal_12_24_markets {
    type: string
    sql: ${TABLE}.CROSSCANAL_12_24_MARKETS ;;
  }
  dimension: crosscanal_12_markets {
    type: string
    description: "Type d'omnicanalité client par marché vision membre et Valiuz. Déclinaison par période : _12 sur les 12 derniers mois, _24 sur les 24 derniers mois, _36 sur les 36 derniers mois, _12_24 entre il y a 12 et 24 mois, _24_36 entre il y a 24 et 36 mois. Modalités: Non scorable, Non scoré -\u003e -1, P1 - DIGIT, P2 - WEB, P3 - STORE, P4 - STOREDIGIT, P5 - STORESA, P6 - CROSS, P7 - CROSSDEVICE"
    label: "Type d'omnicanalité client par marché vision membre et Valiuz"
    sql: ${TABLE}.CROSSCANAL_12_MARKETS ;;
  }
  dimension: crosscanal_24 {
    type: string
    sql: ${TABLE}.CROSSCANAL_24 ;;
  }
  dimension: crosscanal_24_36 {
    type: string
    sql: ${TABLE}.CROSSCANAL_24_36 ;;
  }
  dimension: crosscanal_24_36_markets {
    type: string
    sql: ${TABLE}.CROSSCANAL_24_36_MARKETS ;;
  }
  dimension: crosscanal_24_markets {
    type: string
    sql: ${TABLE}.CROSSCANAL_24_MARKETS ;;
  }
  dimension: crosscanal_36 {
    type: string
    sql: ${TABLE}.CROSSCANAL_36 ;;
  }
  dimension: crosscanal_36_markets {
    type: string
    sql: ${TABLE}.CROSSCANAL_36_MARKETS ;;
  }
  dimension: csr_environment_friendly {
    type: string
    hidden: yes
    description: "Modalités: 0_DIGIT, 1_VERY_LOW, 2_LOW, 3_AVERAGE, 4_SMALL, 5_MEDIUM, 6_BIG, -1 (non scorable)"
    label: "Modalités friendly"
    sql: ${TABLE}.CSR_ENVIRONMENT_FRIENDLY ;;
  }
  dimension: csr_healthy {
    type: string
    hidden: yes
    description: "Modalités: 0_DIGIT, 1_VERY_LOW, 2_LOW, 3_AVERAGE, 4_SMALL, 5_MEDIUM, 6_BIG, -1 (non scorable)"
    label: "Modalités healthy"
    sql: ${TABLE}.CSR_HEALTHY ;;
  }
  dimension: csr_organic {
    type: string
    hidden: yes
    description: "Modalités: 0_DIGIT, 1_VERY_LOW, 2_LOW, 3_AVERAGE, 4_SMALL, 5_MEDIUM, 6_BIG, -1 (non scorable)"
    label: "Modalités organic"
    sql: ${TABLE}.CSR_ORGANIC ;;
  }
  dimension_group: export {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.EXPORT_TIME ;;
  }
  dimension: family_maturity {
    type: string
    sql: ${TABLE}.FAMILY_MATURITY ;;
  }
  dimension: family_maturity_type {
    type: string
    sql: ${TABLE}.FAMILY_MATURITY_TYPE ;;
  }
  dimension: family_top_max {
    type: string
    hidden: yes
    description: "Modalités: null -\u003e -1, -1, TOP_CHILD, TOP_INFANT, TOP_NEWBORN, TOP_PRIMARY_SCHOOL, TOP_TEENAGER"
    label: "Modalités: null -\u003e -1, -1, TOP_CHILD, TOP_INFANT, TOP_NEWBORN, TOP_PRIMARY_SCHOOL, TOP_TEENAGER"
    sql: ${TABLE}.FAMILY_TOP_MAX ;;
  }
  dimension: favorite_time_store_favoriteday1 {
    type: string
    description: "Jour de passage préféré. Modalités: FRIDAY, MONDAY, SATURDAY, SUNDAY, THURSDAY, TUESDAY, WEDNESDAY, -1 (non scorable)"
    label: "Jour de passage préféré"
    sql: ${TABLE}.FAVORITE_TIME_STORE_FAVORITEDAY1 ;;
  }
  dimension: favorite_time_store_favoritehour1 {
    type: string
    description: "Heure de passage préféré. Modalités: 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 6, 7, 8, 9, -1 (non scorable)"
    label: "Heure de passage préféré"
    sql: ${TABLE}.FAVORITE_TIME_STORE_FAVORITEHOUR1 ;;
  }
  dimension: gender {
    type: string
    description: "Genre du client. Modalités: female, male, -1 pour les non scorables"
    label: "Genre du client"
    sql: ${TABLE}.GENDER ;;
  }
  dimension: has_loyalty_card {
    type: string
    description: "Topage carte de fidélité"
    label: "Topage carte de fidélité"
    sql: ${TABLE}.HAS_LOYALTY_CARD ;;
  }
  dimension: home_delivery {
    type: string
    hidden: yes
    description: "Modalités: null, -1, 1_LOW, 2_SMALL, 3_MEDIUM, 4_BIG"
    label: "Modalités: null, -1, 1_LOW, 2_SMALL, 3_MEDIUM, 4_BIG"
    sql: ${TABLE}.HOME_DELIVERY ;;
  }
  dimension: household_top_child {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_CHILD ;;
  }
  dimension: household_top_couple {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_COUPLE ;;
  }
  dimension: household_top_infant {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_INFANT ;;
  }
  dimension: household_top_kids {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_KIDS ;;
  }
  dimension: household_top_newborn {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_NEWBORN ;;
  }
  dimension: household_top_primary_school {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_PRIMARY_SCHOOL ;;
  }
  dimension: household_top_teenager {
    type: string
    sql: ${TABLE}.HOUSEHOLD_TOP_TEENAGER ;;
  }
  dimension: housing_type {
    type: string
    description: "Modalités: APARTMENT, HOUSE, -1 (Non scorable, Non scoré, Population neutre)"
    label: "HABITATION (Appartement ou maison)"
    sql: ${TABLE}.HOUSING_TYPE ;;
  }
  dimension: housing_type_top_owner {
    type: string
    description: "Modalités: Owner, Population neutre, Tenant, -1 (non scorable)"
    label: "Propriétaire ?"
    sql: ${TABLE}.HOUSING_TYPE_TOP_OWNER ;;
  }
  dimension: idclient_ens {
    type: string
    description: "#FK - Identifiant client unique pour l’enseigne du client, fourni par l'enseigne. Null pour les lignes correspondant à des scores vision Valiuz. Pour obtenir les scores vision Valiuz d'un client enseigne, il faut faire la jointure sur l'IDCLIENT_VLZ."
    label: "Identifiant client unique"
    sql: ${TABLE}.IDCLIENT_ENS ;;
  }
  dimension: idclient_vlz {
    type: string
    description: "#FK - Identifiant client généré par Valiuz résultant de l’algorithme CHARLIE. Null pour les lignes correspondant à des scores vision enseigne."
    label: "Identifiant client valiuz"
    sql: ${TABLE}.IDCLIENT_VLZ ;;
  }
  dimension: life_style_segment {
    type: string
    description: "Modalités: A-Cadres sup urbains, B-Cosmopolites, C-Banlieues CSP plus, D-Famille CSP plus, E-Jeunes familles actives, F-Actifs sédentaires, G-Ouvriers péri-urbains, H-Quartier à majorité sans emploi, I-Etudiants et jeunes actifs, J-Solos et couples en ville, K-Couples matures et seniors, L-Familles actives rurale, M-Agriculteurs exploitants, -1 (Non scorable, Non scoré, Population neutre)"
    label: "Style de vie"
    sql: ${TABLE}.LIFE_STYLE_SEGMENT ;;
  }
  dimension: member {
    type: string
    description: "#FK - Trigramme correspondant au nom de l'enseigne."
    label: "Trigramme correspondant au nom de l'enseigne"
    sql: ${TABLE}.MEMBER ;;
  }
  dimension: neighborhood_type {
    type: string
    description: "Type de quartier du client. Modalités: 157-PARISIENS, 158-PARISIENS, 159-PARISIENS, 160-PARISIENS, 161-PARISIENS, 162-PARISIENS, 163-PARISIENS, 164-PARISIENS, 165-PARISIENS, 166-PARISIENS, 167-URBAINS, 168-URBAINS, 169-URBAINS, 170-URBAINS, 171-URBAINS, 172-URBAINS, 173-URBAINS, 174-URBAINS, 175-URBAINS, 176-URBAINS, 177-PERIURBAINS, 178-PERIURBAINS, 179-PERIURBAINS, 180-PERIURBAINS, 181-RURAUX, 182-RURAUX, 183-RURAUX, -1 (Non scorable, Non scoré, Population neutre)"
    label: "Type de quartier du client"
    sql: ${TABLE}.NEIGHBORHOOD_TYPE ;;

  }
  dimension: optin_mail_vlz {
    type: string
    hidden: yes
    description: "Optin email vision Valiuz"
    label: "Option email vision Valiuz"
    sql: ${TABLE}.OPTIN_MAIL_VLZ ;;
  }
  dimension: optin_print_vlz {
    type: string
    hidden: yes
    description: "Optin postal vision Valiuz"
    label: "Option postal vision Valiuz"
    sql: ${TABLE}.OPTIN_PRINT_VLZ ;;
  }
  dimension: optin_push_app_vlz {
    type: string
    hidden: yes
    description: "Optin notification sur l'application vision Valiuz"
    label: "Option notification sur l'application vision Valiuz"
    sql: ${TABLE}.OPTIN_PUSH_APP_VLZ ;;
  }
  dimension: optin_push_web_vlz {
    type: string
    hidden: yes
    description: "Optin notification site web vision Valiuz"
    label: "Option notification site web vision Valiuz"
    sql: ${TABLE}.OPTIN_PUSH_WEB_VLZ ;;
  }
  dimension: optin_sms_vlz {
    type: string
    hidden: yes
    description: "Optin SMS vision Valiuz"
    label: "Option SMS vision Valiuz"
    sql: ${TABLE}.OPTIN_SMS_VLZ ;;
  }
  dimension: optin_tel_vlz {
    type: string
    hidden: yes
    description: "Optin appel téléphonique vision Valiuz"
    label: "Option appel téléphonique vision Valiuz"
    sql: ${TABLE}.OPTIN_TEL_VLZ ;;
  }
  dimension: optins_mail {
    type: string
    hidden: yes
    description: "Optin email"
    label: "Optin email"
    sql: ${TABLE}.OPTINS_MAIL ;;
  }
  dimension: optins_print {
    type: string
    hidden: yes
    description: "Optin postal"
    label: "Optin postal"
    sql: ${TABLE}.OPTINS_PRINT ;;
  }
  dimension: optins_push_app {
    type: string
    hidden: yes
    description: "Optin notification sur l'application"
    label: "Optin notification sur l'application"
    sql: ${TABLE}.OPTINS_PUSH_APP ;;
  }
  dimension: optins_push_web {
    type: string
    hidden: yes
    description: "Optin notification site web"
    label: "Optin notification site web"
    sql: ${TABLE}.OPTINS_PUSH_WEB ;;
  }
  dimension: optins_sms {
    type: string
    hidden: yes
    description: "Optin SMS"
    label: "Optin SMS"
    sql: ${TABLE}.OPTINS_SMS ;;
  }
  dimension: optins_tel {
    type: string
    hidden: yes
    description: "Optin appel téléphonique"
    label: "Optin appel téléphonique"
    sql: ${TABLE}.OPTINS_TEL ;;
  }
  dimension: pet_owner_animal {
    label: "Propriétaire d'un animal"
    type: string
    sql: ${TABLE}.PET_OWNER_ANIMAL ;;
  }
  dimension: pet_owner_cat {
    hidden: yes
    type: string
    sql: ${TABLE}.PET_OWNER_CAT ;;
  }
  dimension: pet_owner_dog {
    type: string
    hidden: yes
    sql: ${TABLE}.PET_OWNER_DOG ;;
  }
  dimension: pet_owner_other {
    type: string
    hidden: yes
    sql: ${TABLE}.PET_OWNER_OTHER ;;
  }
  dimension: price_sensitivity {
    type: string
    description: "Modalités: 1_très_sensibles_bas_prix, 2_sensibles_bas_prix, 3_sensibles_prix_eleve, 4_tres_sensibles_prix_eleve, -1 (non scorable)"
    label: "Sensible au prix (de beaucoup à pas du tout)"
    sql: ${TABLE}.PRICE_SENSITIVITY ;;
  }
  dimension: price_sensitivity_alim {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché"
    sql: ${TABLE}.PRICE_SENSITIVITY_ALIM ;;
  }
  dimension: price_sensitivity_equip_adulte {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_EQUIP_ADULTE ;;
  }
  dimension: price_sensitivity_equip_enfant {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_EQUIP_ENFANT ;;
  }
  dimension: price_sensitivity_equip_it {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_EQUIP_IT ;;
  }
  dimension: price_sensitivity_equip_maison {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_EQUIP_MAISON ;;
  }
  dimension: price_sensitivity_mobility {
    type: string
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_MOBILITY ;;
  }
  dimension: price_sensitivity_petcare {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_PETCARE ;;
  }
  dimension: price_sensitivity_restauration {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_RESTAURATION ;;
  }
  dimension: price_sensitivity_sport_diy {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PRICE_SENSITIVITY_SPORT_DIY ;;
  }
  dimension: promo_sensitivity {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY ;;
  }
  dimension: promo_sensitivity_alim {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_ALIM ;;
  }
  dimension: promo_sensitivity_equip_adulte {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_EQUIP_ADULTE ;;
  }
  dimension: promo_sensitivity_equip_enfant {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_EQUIP_ENFANT ;;
  }
  dimension: promo_sensitivity_equip_it {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_EQUIP_IT ;;
  }
  dimension: promo_sensitivity_equip_maison {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_EQUIP_MAISON ;;
  }
  dimension: promo_sensitivity_mobility {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_MOBILITY ;;
  }
  dimension: promo_sensitivity_petcare {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_PETCARE ;;
  }
  dimension: promo_sensitivity_restauration {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_RESTAURATION ;;
  }
  dimension: promo_sensitivity_sport_diy {
    type: string
    hidden: yes
    description: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    label: "Sensibilité à la promotion par marché. Modalités: INSENSIBLE, OPPORTUNISTE, PROMOPHILE, PROMOPHOBE, PROMOSENSIBLE, -1 (non scorable)"
    sql: ${TABLE}.PROMO_SENSITIVITY_SPORT_DIY ;;
  }
  dimension: relocation {
    type: string
    description: "Statut du déménagement. Modalités: proven_relocation12, proven_relocation24, proven_relocation36, suspicion_relocation101, suspicion_relocation12, suspicion_relocation24, suspicion_relocation3, suspicion_relocation36, suspicion_relocation6, -1 (Non scorable, Non scoré, Population neutre)"
    label: "Statut du déménagement"
    sql: ${TABLE}.RELOCATION ;;
  }
  dimension: second_hand {
    type: string
    hidden: yes
    description: "Modalités: null, -1, 1_LOW, 2_SMALL, 3_MEDIUM, 4_BIG"
    label: "Modalités: null, -1, 1_LOW, 2_SMALL, 3_MEDIUM, 4_BIG"
    sql: ${TABLE}.SECOND_HAND ;;
  }
  dimension: store_activity {
    type: string
    hidden: yes
    description: "Modalités: STORE_ACTIVE, STORE_INACTIVE, STORE_LEAVER, STORE_LEAVER_NEARBY, STORE_OUT_OF_SCOPE, -1 (non scorable)"
    label: "Modalités: STORE_ACTIVE, STORE_INACTIVE, STORE_LEAVER, STORE_LEAVER_NEARBY, STORE_OUT_OF_SCOPE, -1 (non scorable)"
    sql: ${TABLE}.STORE_ACTIVITY ;;
  }
  dimension: top_age {
    type: string
    hidden: yes
    sql: ${TABLE}.TOP_AGE ;;
  }
  dimension: top_age_type {
    type: string
    hidden: yes
    sql: ${TABLE}.TOP_AGE_TYPE ;;
  }
  dimension: top_garden {
    type: string
    hidden: yes
    description: "Modalités: Garden detected, -1 (Non scorable, Non scoré, Population neutre)"
    label: "Modalités: Garden detected, -1 (Non scorable, Non scoré, Population neutre)"
    sql: ${TABLE}.TOP_GARDEN ;;
  }
  dimension: zone_activity_point_of_sale {
    type: string
    hidden: yes
    sql: ${TABLE}.ZONE_ACTIVITY_POINT_OF_SALE ;;
  }
  dimension: zone_activity_status {
    type: string
    hidden: yes
    description: "Modalités: inactive, leaver, loyal, new_on_zone, out_of_scope, -1 (non scorable)"
    label: "Modalités: inactive, leaver, loyal, new_on_zone, out_of_scope, -1 (non scorable)"
    sql: ${TABLE}.ZONE_ACTIVITY_STATUS ;;
  }
  measure: count {
    type: count
  }
}
