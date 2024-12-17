BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName,
	t1.LastName
FROM
	Person t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	Coalesce(p.PersonID, 0) >= 2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		)
			THEN true
		ELSE false
	END

