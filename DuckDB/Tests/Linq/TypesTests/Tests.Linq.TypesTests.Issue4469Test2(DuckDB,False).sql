-- DuckDB
DECLARE $param Decimal(2, 0)
SET     $param = 33
DECLARE $param_1 Decimal(2, 0)
SET     $param_1 = 33

SELECT
	CAST(v."Integer" AS DECIMAL) / CAST($param AS DECIMAL),
	v."Decimal" / CAST($param_1 AS DECIMAL(10, 5)),
	v."Double" / CAST($param AS DECIMAL)
FROM
	Issue4469Table v
LIMIT 2

