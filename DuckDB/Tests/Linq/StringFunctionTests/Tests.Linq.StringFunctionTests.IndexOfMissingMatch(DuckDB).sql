-- DuckDB
SELECT
	Position('x' in p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- DuckDB
SELECT
	Position('x' in p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- DuckDB
DECLARE $c NChar -- StringFixedLength
SET     $c = 'o'

SELECT
	Position($c in p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- DuckDB
DECLARE $c NChar -- StringFixedLength
SET     $c = 'o'

SELECT
	CASE
		WHEN Position($c in Substring(p.FirstName, 2)) = 0 THEN 0
		ELSE Position($c in Substring(p.FirstName, 2)) + 1
	END - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

