-- DuckDB
DECLARE $param NVarChar(2) -- String
SET     $param = '33'
DECLARE $param_1 NVarChar(2) -- String
SET     $param_1 = '33'

SELECT
	CAST(v."Integer" AS DECIMAL) / CAST($param AS DECIMAL(38, 18)),
	v."Decimal" / CAST($param_1 AS DECIMAL(10,5)),
	v."Double" / CAST($param AS DECIMAL(38, 18))
FROM
	Issue4469Table v
LIMIT 2

