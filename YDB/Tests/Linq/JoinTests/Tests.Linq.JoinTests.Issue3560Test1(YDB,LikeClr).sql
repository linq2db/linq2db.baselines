-- YDB Ydb

SELECT
	p1.FirstName as FirstName,
	p1.PersonID as ID,
	p1.LastName as LastName,
	p1.MiddleName as MiddleName,
	p1.Gender as Gender,
	p2.FirstName as FirstName_1,
	p2.PersonID as ID_1,
	p2.LastName as LastName_1,
	p2.MiddleName as MiddleName_1,
	p2.Gender as Gender_1
FROM
	Person p1
		CROSS JOIN Person p2
WHERE
	p1.MiddleName = p2.MiddleName OR p1.MiddleName IS NULL AND p2.MiddleName IS NULL

