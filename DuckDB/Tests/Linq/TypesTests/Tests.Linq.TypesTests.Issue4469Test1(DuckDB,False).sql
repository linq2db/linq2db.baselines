-- DuckDB
DECLARE $param  -- Int32
SET     $param = 33

SELECT
	v."Integer" // CAST($param AS INTEGER),
	v."Decimal" / CAST($param AS INTEGER),
	v."Double" / CAST($param AS INTEGER)
FROM
	Issue4469Table v
LIMIT 2

