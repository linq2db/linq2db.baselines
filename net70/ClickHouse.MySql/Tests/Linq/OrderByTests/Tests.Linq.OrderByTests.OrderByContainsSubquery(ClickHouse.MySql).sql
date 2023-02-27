BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.PersonID,
	_.LastName
FROM
	Person _
ORDER BY
	CASE
		WHEN _.PersonID IN (toInt32(1), toInt32(3))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

