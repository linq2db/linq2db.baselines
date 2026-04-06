-- DuckDB
DECLARE $In  -- Object
SET     $In = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IN (CAST($In AS VARCHAR), CAST($In AS VARCHAR))

-- DuckDB
DECLARE $NotIn  -- Object
SET     $NotIn = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum NOT IN (CAST($NotIn AS VARCHAR), CAST($NotIn AS VARCHAR))

