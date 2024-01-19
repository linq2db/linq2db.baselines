BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.FirstName,
	c_1.PersonID,
	c_1.LastName,
	c_1.MiddleName,
	c_1.Gender
FROM
	Person c_1
WHERE
	c_1.PersonID = toInt32(1) AND CASE
		WHEN c_1.MiddleName IS NOT NULL
			THEN lowerUTF8(Trim(c_1.MiddleName))
		ELSE ''
	END = ''

