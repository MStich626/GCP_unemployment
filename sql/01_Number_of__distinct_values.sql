SELECT
  'STRUCTURE' as table_name,
  count(distinct STRUCTURE)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'STRUCTURE_ID' as table_name,
  count(distinct STRUCTURE_ID)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'freq' as table_name,
  count(distinct freq)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  's_adj' as table_name,
  count(distinct s_adj)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'age' as table_name,
  count(distinct age)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'unit' as table_name,
  count(distinct unit)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'sex' as table_name,
  count(distinct sex)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'geo' as table_name,
  count(distinct geo)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'TIME_PERIOD' as table_name,
  count(distinct TIME_PERIOD)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'OBS_VALUE' as table_name,
  count(distinct OBS_VALUE)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'OBS_FLAG' as table_name,
  count(distinct OBS_FLAG)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`

UNION ALL

SELECT
  'CONF_STATUS' as table_name,
  count(distinct CONF_STATUS)
FROM `project-cd1d7fd5-f62b-461c-a6f.eurostat_data.unemployed_raw`
