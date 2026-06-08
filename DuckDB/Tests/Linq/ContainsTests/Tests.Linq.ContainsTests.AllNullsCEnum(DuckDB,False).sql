-- DuckDB
DECLARE $In VarChar(20) -- AnsiString
SET     $In = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum IN ($In, $In)

-- DuckDB
DECLARE $NotIn VarChar(20) -- AnsiString
SET     $NotIn = NULL

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.CEnum NOT IN ($NotIn, $NotIn)

