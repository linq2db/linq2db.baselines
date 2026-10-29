-- DuckDB
DECLARE $ids INTEGER -- Int32
SET     $ids = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $ids

-- DuckDB
DECLARE $ids INTEGER -- Int32
SET     $ids = 3

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $ids

-- DuckDB
DECLARE $ids INTEGER -- Int32
SET     $ids = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $ids

-- DuckDB
DECLARE $ids INTEGER -- Int32
SET     $ids = 3

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = $ids

