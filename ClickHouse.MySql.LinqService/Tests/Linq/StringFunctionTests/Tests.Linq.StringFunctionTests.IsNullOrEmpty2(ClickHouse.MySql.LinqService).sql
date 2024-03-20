BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = toInt32(0))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)

