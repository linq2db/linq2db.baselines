BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p1.PersonID,
	p2.FirstName
FROM
	Person p1,
	Person p2
WHERE
	p2.PersonID = 1 AND p1.PersonID = p2.PersonID

