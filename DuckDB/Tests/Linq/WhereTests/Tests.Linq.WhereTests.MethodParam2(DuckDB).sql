-- DuckDB
DECLARE $t  -- Int32
SET     $t = 1

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $t

-- DuckDB
DECLARE $t  -- Int32
SET     $t = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $t

