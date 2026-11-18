-- DuckDB
SELECT
	CAST('p_' AS VARCHAR),
	p.PersonID,
	CAST('X' AS VARCHAR),
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	CAST('q_' AS VARCHAR),
	p_1.PersonID,
	CAST('X' AS VARCHAR),
	p_1.FirstName,
	p_1.LastName
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

