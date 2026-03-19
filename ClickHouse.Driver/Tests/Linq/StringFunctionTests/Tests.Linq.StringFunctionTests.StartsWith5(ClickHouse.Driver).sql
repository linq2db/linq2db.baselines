-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1,
	Person p2
WHERE
	t1.PersonID = p2.PersonID AND startsWith(Replace(t1.FirstName, 'J', '%'), Replace(p2.FirstName, 'J', '%'))

