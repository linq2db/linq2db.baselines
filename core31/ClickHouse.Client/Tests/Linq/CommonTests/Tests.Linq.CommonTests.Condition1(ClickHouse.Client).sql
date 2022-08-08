BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = toInt32(0))
			THEN true
		ELSE false
	END,
	p.FirstName,
	CASE
		WHEN (p.MiddleName IS NULL OR CHAR_LENGTH(p.MiddleName) = toInt32(0))
			THEN true
		ELSE false
	END,
	p.MiddleName,
	p.LastName
FROM
	Person p

