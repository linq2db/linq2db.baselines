-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	c_1.PersonID as OtherID_1
FROM
	Person p
		CROSS JOIN Person c_1
WHERE
	p.Gender = c_1.Gender

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

