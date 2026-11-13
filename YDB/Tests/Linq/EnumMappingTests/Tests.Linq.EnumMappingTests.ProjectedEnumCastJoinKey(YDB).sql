-- YDB Ydb
SELECT
	l.PersonID as PersonID,
	r.PersonID as RightId_1,
	r.Gender as Gender
FROM
	Person l
		INNER JOIN Person r ON l.Gender = r.Gender

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

