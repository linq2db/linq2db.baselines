-- DuckDB

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	1 = 0

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.PersonID = CAST($id AS INTEGER)

