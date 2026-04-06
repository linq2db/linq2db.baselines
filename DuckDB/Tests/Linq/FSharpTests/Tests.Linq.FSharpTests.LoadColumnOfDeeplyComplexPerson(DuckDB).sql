-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = CAST($p AS INTEGER)
LIMIT 2

