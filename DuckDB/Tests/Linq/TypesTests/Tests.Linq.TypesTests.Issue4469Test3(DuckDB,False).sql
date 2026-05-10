-- DuckDB
DECLARE $param  -- Double
SET     $param = 33

SELECT
	CAST(v."Integer" AS DOUBLE) / $param,
	CAST(v."Decimal" AS DOUBLE) / $param,
	v."Double" / $param
FROM
	Issue4469Table v
LIMIT 2

