BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	CASE
		WHEN t1.PersonID IN (toInt32(1), toInt32(3))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

