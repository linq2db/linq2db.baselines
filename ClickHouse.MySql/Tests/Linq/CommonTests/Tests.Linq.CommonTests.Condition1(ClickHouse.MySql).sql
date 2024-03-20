BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = toInt32(0))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END,
	p.FirstName,
	CASE
		WHEN (p.MiddleName IS NULL OR CHAR_LENGTH(p.MiddleName) = toInt32(0))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END,
	p.MiddleName,
	p.LastName
FROM
	Person p

