-- DuckDB

SELECT
	CAST(v."Integer" AS DOUBLE) / 33,
	CAST(v."Decimal" AS DOUBLE) / 33,
	v."Double" / 33
FROM
	Issue4469Table v
LIMIT 2

