BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = toInt32(1) AND CASE
		WHEN p.MiddleName IS NOT NULL
			THEN toInt32(3)
		WHEN p.PersonID = toInt32(2)
			THEN toInt32(2)
		WHEN p.MiddleName IS NOT NULL
			THEN toInt32(0)
		ELSE toInt32(1)
	END = toInt32(1) AND
	CASE
		WHEN p.FirstName IS NULL THEN toInt32(3)
		WHEN p.PersonID = toInt32(2)
			THEN toInt32(2)
		WHEN p.FirstName IS NULL THEN toInt32(0)
		ELSE toInt32(1)
	END = toInt32(1)

