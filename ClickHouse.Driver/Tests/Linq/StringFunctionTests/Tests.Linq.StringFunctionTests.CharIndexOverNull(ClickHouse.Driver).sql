-- ClickHouse.Driver ClickHouse
SELECT
	positionUTF8(p.MiddleName, 'o')
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.Driver ClickHouse
SELECT
	positionUTF8(p.FirstName, p.MiddleName)
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.Driver ClickHouse
SELECT
	positionUTF8(p.FirstName, CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 'o'
	END)
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.Driver ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	positionUTF8(p.MiddleName, 'o') = 0
ORDER BY
	p.PersonID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

