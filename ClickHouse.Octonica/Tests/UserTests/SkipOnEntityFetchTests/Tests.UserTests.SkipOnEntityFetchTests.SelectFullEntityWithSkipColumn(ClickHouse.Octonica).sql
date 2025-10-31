-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.LastName
FROM
	Person t1

-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	Coalesce(p.PersonID, 0) >= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID IS NULL
	)

-- ClickHouse.Octonica ClickHouse

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID IS NULL
	)

