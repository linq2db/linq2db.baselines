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
			THEN toInt32(1)
		ELSE toInt32(0)
	END

