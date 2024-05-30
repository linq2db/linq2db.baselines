BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.PersonID,
	p2.FirstName
FROM
	Person t1,
	Person p2
WHERE
	p2.PersonID = 1 AND t1.PersonID = p2.PersonID

