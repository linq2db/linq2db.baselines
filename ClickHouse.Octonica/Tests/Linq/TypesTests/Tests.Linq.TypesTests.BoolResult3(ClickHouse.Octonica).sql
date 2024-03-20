BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN p.PersonID = toInt32(1)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END
FROM
	Person p

