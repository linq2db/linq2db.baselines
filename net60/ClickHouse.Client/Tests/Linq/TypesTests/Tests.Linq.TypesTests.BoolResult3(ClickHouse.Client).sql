BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN p.PersonID = toInt32(1)
			THEN toInt32(1)
		ELSE toInt32(0)
	END
FROM
	Person p

