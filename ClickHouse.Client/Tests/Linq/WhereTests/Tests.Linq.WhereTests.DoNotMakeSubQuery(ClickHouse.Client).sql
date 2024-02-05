BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p2.PersonID,
	p2.FirstName
FROM
	Person p2
WHERE
	p2.PersonID = toInt32(1)

