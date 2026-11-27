-- DuckDB
DECLARE $param DOUBLE -- Double
SET     $param = 33

SELECT
	CAST(v."Integer" AS DOUBLE) / $param,
	CAST(v."Decimal" AS DOUBLE) / $param,
	v."Double" / $param
FROM
	NumericDivisionTable v
LIMIT 2

