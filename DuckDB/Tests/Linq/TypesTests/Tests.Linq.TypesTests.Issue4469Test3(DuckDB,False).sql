-- DuckDB
DECLARE $param NVarChar(2) -- String
SET     $param = '33'

SELECT
	CAST(v."Integer" AS DOUBLE) / CAST($param AS DOUBLE),
	CAST(v."Decimal" AS DOUBLE) / CAST($param AS DOUBLE),
	v."Double" / CAST($param AS DOUBLE)
FROM
	Issue4469Table v
LIMIT 2

