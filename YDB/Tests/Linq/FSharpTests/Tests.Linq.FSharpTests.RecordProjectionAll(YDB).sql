-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

