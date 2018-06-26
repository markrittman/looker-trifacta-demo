view: strava_activities_with_health_weather {
  sql_table_name: personal_data_warehouse.strava_activities_with_health_weather ;;

  measure: achievement_count {
    type: sum
    sql: ${TABLE}.achievement_count ;;
  }

  dimension: activity_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.Activity_Id ;;
  }

  measure: activity_score {
    type: average
    sql: ${TABLE}.Activity_Score ;;
  }

  dimension: athlete_count {
    type: number
    sql: ${TABLE}.athlete_count ;;
  }

  dimension: average_cadence {
    type: number
    sql: ${TABLE}.average_cadence ;;
  }

  measure: average_speed {
    type: average
    sql: ${TABLE}.average_speed ;;
  }

  dimension: average_temp {
    type: number
    sql: ${TABLE}.average_temp ;;
  }

  measure: average_watts {
    type: average
    sql: ${TABLE}.average_watts ;;
  }

  measure: avg_cal {
    label: "Avg Calories Burned"
    type: average
    sql: ${TABLE}.Cal ;;
  }

  measure: tot_cal {
    label: "Total Calories Burned"
    type: sum
    sql: ${TABLE}.Cal ;;
  }

  dimension: comment_count {
    type: number
    sql: ${TABLE}.comment_count ;;
  }

  dimension: condition {
    label: "Weather Conditions"
    type: string
    sql: ${TABLE}.condition ;;
  }

  dimension_group: start_date {
    label: "Start Time"
    type: time
    timeframes: [
      raw,
      minute5,
      minute10,
      minute30,
      hour,
      hour4,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.date_time_5_min_bucket AS TIMESTAMP) ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.Day_of_Week ;;
  }

  dimension: device_watts {
    type: yesno
    sql: ${TABLE}.device_watts ;;
  }

  measure: avg_distance {
    type: average
    sql: ${TABLE}.distance ;;
  }

  measure: total_distance {
    type: sum
    sql: ${TABLE}.distance ;;
  }

  measure: avg_elapsed_time_mins {
    type: average
    sql: ${TABLE}.elapsed_time_mins ;;
  }

  measure: total_elapsed_time_mins {
    type: sum
    sql: ${TABLE}.elapsed_time_mins ;;
  }


  dimension: elev_dist_m_km {
    type: number
    sql: ${TABLE}.Elev_Dist_m_km ;;
  }

  dimension: elev_high {
    type: number
    sql: ${TABLE}.elev_high ;;
  }

  dimension: elev_low {
    type: number
    sql: ${TABLE}.elev_low ;;
  }

  dimension: elev_time_m_h {
    type: number
    sql: ${TABLE}.Elev_Time_m_h ;;
  }



  dimension_group: end_date {
    label: "End Time"
    type: time
    timeframes: [
      raw,
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
    sql: CAST(${TABLE}.end_date_time_5_min_bucket AS TIMESTAMP) ;;
  }

  measure: fat_mass_kg {
    type: average
    sql: ${TABLE}.Fat_mass_kg ;;
  }

  dimension: gear {
    type: string
    sql: ${TABLE}.Gear ;;
  }

  dimension: gear_id {
    hidden: yes
    type: string
    sql: ${TABLE}.gear_id ;;
  }

  dimension: h_r_zone_1 {
    group_label: "HR Zone"
    type: number
    sql: ${TABLE}.H_R_Zone_1 ;;
  }

  dimension: h_r_zone_2 {
    group_label: "HR Zone"

    type: number
    sql: ${TABLE}.H_R_Zone_2 ;;
  }

  dimension: h_r_zone_3 {
    group_label: "HR Zone"

    type: number
    sql: ${TABLE}.H_R_Zone_3 ;;
  }

  dimension: h_r_zone_4 {
    group_label: "HR Zone"

    type: number
    sql: ${TABLE}.H_R_Zone_4 ;;
  }

  dimension: h_r_zone_5 {
    group_label: "HR Zone"

    type: number
    sql: ${TABLE}.H_R_Zone_5 ;;
  }

  dimension: has_heartrate {
    type: yesno
    sql: ${TABLE}.has_heartrate ;;
  }

  dimension: has_kudoed {
    type: yesno
    sql: ${TABLE}.has_kudoed ;;
  }

  measure: strava_heart_rate_bpm {
    type: average
    sql: ${TABLE}.Heart ;;
  }

  measure: apple_watch_heart_rate_bpm {
    type: average
    sql: ${TABLE}.heart_rate_bpm ;;
  }

  measure: hours_sleep_3day_rolling_avg {
    type: average
    sql: cast(${TABLE}.hours_sleep_3day_rolling_avg as float64);;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  measure: kilojoules {
    type: average
    sql: ${TABLE}.kilojoules ;;
  }

  measure: total_kudos_count {
    type: sum
    sql: ${TABLE}.kudos_count ;;
  }

  measure: avg_kudos_count {
    type: average
    sql: ${TABLE}.kudos_count ;;
  }


  dimension: start_location {
    type: location
    sql_latitude: ${TABLE}.Latitude ;;
    sql_longitude: ${TABLE}.Longitude ;;
  }

  dimension: end_location {
    type: location
    sql_latitude:: ${TABLE}.Latitude_End ;;
    sql_longitude:  ${TABLE}.Longitude_End;;
  }

  dimension: location_country {
    type: string
    sql: ${TABLE}.location_country ;;
  }

  measure: max_heart {
    type: average
    sql: ${TABLE}.Max_Heart ;;
  }

  measure: max_pace_100m {
    type: average
    sql: ${TABLE}.Max_Pace_100m ;;
  }

  measure: max_pace_km {
    type: average
    sql: ${TABLE}.Max_Pace_km ;;
  }

  measure: max_speed {
    type: average
    sql: ${TABLE}.max_speed ;;
  }

  measure: total_moving_time_mins {
    type: sum
    sql: ${TABLE}.moving_time_mins ;;
  }

  measure: avg_moving_time_mins {
    type: average
    sql: ${TABLE}.moving_time_mins ;;
  }

  dimension: name {
    label: "Activity Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pace_100m {
    group_label: "Pace"
    type: number
    sql: ${TABLE}.Pace_100m ;;
  }

  dimension: pace_km {
    group_label: "Pace"

    type: number
    sql: ${TABLE}.Pace_km ;;
  }

  measure: photo_count {
    type: sum
    sql: ${TABLE}.photo_count ;;
  }

  dimension: power_0_50_w {
    group_label: "Power"
    type: number
    sql: ${TABLE}.Power_0_50W ;;
  }

  dimension: power_0_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_0W ;;
  }

  dimension: power_100_150_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_100_150W ;;
  }

  dimension: power_150_200_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_150_200W ;;
  }

  dimension: power_200_250_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_200_250W ;;
  }

  dimension: power_250_300_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_250_300W ;;
  }

  dimension: power_300_350_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_300_350W ;;
  }

  dimension: power_350_400_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_350_400W ;;
  }

  dimension: power_400_450_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_400_450W ;;
  }

  dimension: power_450_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_450W ;;
  }

  dimension: power_50_100_w {
    group_label: "Power"

    type: number
    sql: ${TABLE}.Power_50_100W ;;
  }

  measure: total_pr_count {
    type: sum
    sql: ${TABLE}.pr_count ;;
  }

  measure: avg_pr_count {
    type: average
    sql: ${TABLE}.pr_count ;;
  }

  measure: pwr_w {
    type: average
    sql: ${TABLE}.Pwr_W ;;
  }

  dimension: relative_effort {
    type: number
    sql: ${TABLE}.Relative_Effort ;;
  }

  dimension_group: start {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.start_date AS TIMESTAMP) ;;
  }

  dimension_group: start_date_local {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.start_date_local AS TIMESTAMP) ;;
  }


  measure: suffer_score {
    type: average
    sql: ${TABLE}.suffer_score ;;
  }

  dimension: temp_c {
    type: number
    sql: ${TABLE}.temp_c ;;
  }

  dimension: total_elevation_gain {
    type: number
    sql: ${TABLE}.total_elevation_gain ;;
  }

  measure: total_photo_count {
    type: sum
    sql: ${TABLE}.total_photo_count ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: w_hr {
    type: number
    sql: ${TABLE}.W_HR ;;
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

  dimension: workout_type {
    type: string
    sql: ${TABLE}.workout_type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
