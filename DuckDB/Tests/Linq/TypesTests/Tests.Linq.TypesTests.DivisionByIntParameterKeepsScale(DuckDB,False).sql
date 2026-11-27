-- DuckDB
DECLARE $param INTEGER -- Int32
SET     $param = 33

SELECT
	v."Integer" // $param,
	v."Decimal" / $param,
	v."Double" / $param
FROM
	NumericDivisionTable v
LIMIT 2

