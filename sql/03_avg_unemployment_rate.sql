SELECT
  SUBSTR(time_period_code, 1, 4) AS year,
  ROUND(AVG(unemployment_rate), 2) AS avg_unemployment_rate
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.v_unemployment_clean`
WHERE country_code = 'PL'
  AND unit_code = 'PC_ACT'
  AND sex_code = 'T'
  AND age_label = 'Total'
  AND seasonal_adjustment_code = 'SA'
GROUP BY year
ORDER BY year ASC;