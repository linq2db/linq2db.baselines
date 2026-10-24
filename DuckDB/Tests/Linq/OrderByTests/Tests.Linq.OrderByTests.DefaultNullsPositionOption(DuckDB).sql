-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3

SELECT
	x.Id
FROM
	NullsTable x
ORDER BY
	x."Value",
	x.Id
LIMIT $take

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3

SELECT
	x.Id
FROM
	NullsTable x
ORDER BY
	x."Value",
	x.Id
LIMIT $take

