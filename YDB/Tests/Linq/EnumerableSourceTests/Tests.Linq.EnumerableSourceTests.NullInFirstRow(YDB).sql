-- YDB Ydb
SELECT
	r.Id as Id,
	r.`Value` as Value_1,
	r.Name as Name
FROM
	Person p
		INNER JOIN (VALUES
			(1,NULL,'a'u), (2,2,NULL)
		) r(Id, `Value`, Name) ON p.PersonID = r.Id
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

