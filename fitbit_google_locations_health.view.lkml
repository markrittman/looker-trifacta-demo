view: fitbit_google_locations_health {
  sql_table_name: personal_data_warehouse.fitbit_google_locations_health ;;

  measure: average_calories_walking {
    type: average
    sql: ${TABLE}.average_calories_walking ;;
  }

  measure: average_distance_walking_metres {
    type: average
    sql: ${TABLE}.average_distance_walking_metres ;;
  }

  measure: average_steps_walking {
    type: average
    sql: ${TABLE}.average_steps_walking ;;
  }

  dimension: condition {
    type: string
    sql: ${TABLE}.condition ;;
  }

  measure: cycling_calories_burnt {
    type: sum
    sql: ${TABLE}.cycling_calories_burnt ;;
  }

  measure: cycling_distance_metres {
    type: sum
    sql: ${TABLE}.cycling_distance_metres ;;
  }

  measure: cycling_duration_mins {
    type: sum
    sql: ${TABLE}.cycling_duration_mins ;;
  }

  dimension_group: start_date {
    type: time
    timeframes: [
      raw,
      minute5,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.date_time AS TIMESTAMP) ;;
  }

  dimension_group: end_date {
    type: time
    timeframes: [
      raw,
      minute5,
      time,
      minute10,
      minute30,
      hour,
      hour4,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: timestamp_add(CAST(${TABLE}.date_time AS TIMESTAMP), interval 5 minute) ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: CAST(${start_date_minute5} as TIMESTAMP) ;;
  }



  measure: fat_mass_kg {
    type: average
    sql: ${TABLE}.Fat_mass_kg ;;
  }

  measure: heart_rate_bpm {
    type: average
    sql: ${TABLE}.heart_rate_bpm ;;
  }

  measure: hours_sleep_3day_rolling_avg {
    type: average
    sql: cast(${TABLE}.hours_sleep_3day_rolling_avg as float64) ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.Latitude ;;
    sql_longitude: ${TABLE}.Longitude;;
  }

  dimension: temp_c {
    type: number
    sql: ${TABLE}.temp_c ;;
  }

  measure: walking_duration_mins {
    type: sum
    sql: ${TABLE}.walking_duration_mins ;;
  }

  measure: weight_kg {
    type: average
    sql: ${TABLE}.Weight_kg ;;
  }

  dimension: wind_direction {
    type: string
    sql: ${TABLE}.wind_direction ;;
  }

  dimension: wind_speed_kph {
    type: number
    sql: ${TABLE}.wind_speed_kph ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
