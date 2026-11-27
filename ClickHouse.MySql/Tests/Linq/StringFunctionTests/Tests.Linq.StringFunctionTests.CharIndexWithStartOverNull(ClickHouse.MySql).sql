-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.MiddleName, 'o', toUInt32(2))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.FirstName, p.MiddleName, toUInt32(2))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.FirstName, CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 'o'
	END, toUInt32(2))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.FirstName, 'o', toUInt32(CASE
		WHEN p.MiddleName IS NULL THEN NULL
		ELSE 1
	END))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.MiddleName IS NULL
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.FirstName, 'o', toUInt32(1))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- ClickHouse.MySql ClickHouse
SELECT
	positionUTF8(p.FirstName, 'o', toUInt32(NULL))
FROM
	Person p
ORDER BY
	p.PersonID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

