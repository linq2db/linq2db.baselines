BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = toInt32(0))
			THEN toInt32(1)
		ELSE toInt32(0)
	END
FROM
	Person p
WHERE
	p.PersonID = toInt32(1)

