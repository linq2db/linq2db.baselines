-- DuckDB
DECLARE $take  -- Int32
SET     $take = 1

SELECT
	True
FROM
	SelectExpressionTable t1
LIMIT CAST($take AS INTEGER)

