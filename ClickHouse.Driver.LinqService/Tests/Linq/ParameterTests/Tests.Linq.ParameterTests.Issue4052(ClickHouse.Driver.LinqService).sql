BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	c_1.FirstName,
	c_1.PersonID,
	c_1.LastName,
	c_1.MiddleName,
	c_1.Gender
FROM
	Person c_1
WHERE
	c_1.PersonID = 1 AND (c_1.MiddleName IS NULL OR lowerUTF8(Trim(c_1.MiddleName)) = '')

