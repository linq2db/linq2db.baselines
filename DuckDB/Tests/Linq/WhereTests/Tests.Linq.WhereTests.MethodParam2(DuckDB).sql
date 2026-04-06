-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = CAST($p AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = CAST($p AS INTEGER)

