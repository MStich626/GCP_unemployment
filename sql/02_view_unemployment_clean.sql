SELECT

  SAFE_CAST(OBS_VALUE AS FLOAT64) AS unemployment_rate,
  PARSE_DATE('%Y-%m', TIME_PERIOD) AS report_date,
  TIME_PERIOD AS time_period_code,


  geo AS country_code,

  sex AS sex_code,
  CASE sex
    WHEN 'T' THEN 'Total'
    WHEN 'M' THEN 'Male'
    WHEN 'F' THEN 'Female'
    ELSE sex
  END AS sex_label,

  age AS age_code,
  CASE age
    WHEN 'TOTAL' THEN 'Total'
    WHEN 'Y15-24' THEN 'Under 25 years'
    WHEN 'Y25-74' THEN '25-74 years'
    WHEN 'Y15-74' THEN '15-74 years'
    ELSE age
  END AS age_label,

  unit AS unit_code,
  CASE unit
    WHEN 'PC_ACT' THEN 'Percentage of active population (%)'
    WHEN 'THS_PER' THEN 'Thousand persons'
    WHEN 'PC_POP' THEN 'Percentage of total population (%)'
    ELSE unit
  END AS unit_label,

  s_adj AS seasonal_adjustment_code,
  CASE s_adj
    WHEN 'NSA' THEN 'Unadjusted (Niekorygowane)'
    WHEN 'SA'  THEN 'Seasonally adjusted (Korygowane sezonowo)'
    WHEN 'TCA' THEN 'Trend cycle (Cykl i trend)'
    ELSE s_adj
  END AS seasonal_adjustment_label,

  OBS_FLAG AS observation_flag

FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`
WHERE TIME_PERIOD IS NOT NULL