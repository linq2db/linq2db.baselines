-- DuckDB
DECLARE $In NVarChar(12) -- String
SET     $In = '___Value3___'
DECLARE $In_1 NVarChar(12) -- String
SET     $In_1 = '___Value4___'

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN (CAST($In AS VARCHAR), CAST($In_1 AS VARCHAR))
LIMIT 1

-- DuckDB
DECLARE $In NVarChar(12) -- String
SET     $In = '___Value3___'
DECLARE $In_1  -- Object
SET     $In_1 = NULL

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN (CAST($In AS VARCHAR), CAST($In_1 AS VARCHAR))
LIMIT 1

-- DuckDB
DECLARE $In NVarChar(12) -- String
SET     $In = '___Value3___'
DECLARE $In_1 NVarChar(12) -- String
SET     $In_1 = '___Value2___'

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum IN (CAST($In AS VARCHAR), CAST($In_1 AS VARCHAR))
LIMIT 1

-- DuckDB
DECLARE $NotIn  -- Object
SET     $NotIn = NULL
DECLARE $NotIn_1 NVarChar(12) -- String
SET     $NotIn_1 = '___Value2___'

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum NOT IN (CAST($NotIn AS VARCHAR), CAST($NotIn_1 AS VARCHAR))
LIMIT 1

-- DuckDB
DECLARE $NotIn NVarChar(12) -- String
SET     $NotIn = '___Value3___'
DECLARE $NotIn_1 NVarChar(12) -- String
SET     $NotIn_1 = '___Value2___'

SELECT
	s.Id
FROM
	Src s
WHERE
	s.CEnum NOT IN (CAST($NotIn AS VARCHAR), CAST($NotIn_1 AS VARCHAR))
LIMIT 1

