-- DuckDB
DECLARE $n  -- Int32
SET     $n = 1

SELECT
	(p.PersonID + CAST($n AS INTEGER)) - 1,
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID + CAST($n AS INTEGER) = 2

