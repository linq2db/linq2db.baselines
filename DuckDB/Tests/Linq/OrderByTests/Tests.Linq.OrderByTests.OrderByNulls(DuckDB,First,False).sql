-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3

SELECT
	t1.Id,
	t1.Grp,
	t1."Value"
FROM
	NullsTable t1
ORDER BY
	t1."Value" NULLS FIRST,
	t1.Id
LIMIT $take

-- DuckDB

SELECT
	t1.Id,
	t1.Grp,
	t1."Value"
FROM
	NullsTable t1

