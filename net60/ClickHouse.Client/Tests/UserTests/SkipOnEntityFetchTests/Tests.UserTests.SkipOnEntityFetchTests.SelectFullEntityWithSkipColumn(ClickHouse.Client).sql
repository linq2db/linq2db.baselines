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
	Coalesce(p.PersonID, toInt32(0)) >= toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		))
			THEN toInt32(1)
		ELSE toInt32(0)
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		))
			THEN toInt32(1)
		ELSE toInt32(0)
	END

