-- DuckDB
DECLARE $arr INTEGER -- Int32
SET     $arr = 2

SELECT
	p.PersonID,
	CAST($arr AS INTEGER)
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID,
	CAST(0 AS INTEGER)
FROM
	Person p_1
WHERE
	p_1.PersonID = 2

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

