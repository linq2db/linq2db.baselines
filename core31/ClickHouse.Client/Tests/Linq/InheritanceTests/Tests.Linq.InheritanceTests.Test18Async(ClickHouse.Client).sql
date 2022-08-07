BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT DISTINCT
	p1.PersonID,
	p1.Gender,
	p1.FirstName,
	p1.LastName
FROM
	Person p1
WHERE
	p1.Gender = 'F' AND p1.PersonID IN (toInt32(0), toInt32(1), toInt32(2), toInt32(3), toInt32(4), toInt32(5), toInt32(6), toInt32(7), toInt32(8), toInt32(9))

