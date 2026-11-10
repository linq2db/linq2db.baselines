-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 1

SELECT
	1
FROM
	Person t1
LIMIT $take

