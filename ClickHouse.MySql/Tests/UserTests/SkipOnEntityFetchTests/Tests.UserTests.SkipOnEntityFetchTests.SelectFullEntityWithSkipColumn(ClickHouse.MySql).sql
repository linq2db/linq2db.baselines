BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.LastName
FROM
	Person t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	Coalesce(p.PersonID, toInt32(0)) >= toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

