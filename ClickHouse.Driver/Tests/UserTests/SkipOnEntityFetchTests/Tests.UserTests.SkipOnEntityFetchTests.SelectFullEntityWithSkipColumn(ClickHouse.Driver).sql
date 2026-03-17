-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.LastName
FROM
	Person t1

-- ClickHouse.Driver ClickHouse

SELECT
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	Coalesce(p.PersonID, 0) >= 2

-- ClickHouse.Driver ClickHouse

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID IS NULL
	)

-- ClickHouse.Driver ClickHouse

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID IS NULL
	)

