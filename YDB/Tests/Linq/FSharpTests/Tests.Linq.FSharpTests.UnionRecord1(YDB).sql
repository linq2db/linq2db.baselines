-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.MiddleName as MiddleName,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID = 1
UNION
SELECT
	p_1.PersonID as PersonID,
	p_1.MiddleName as MiddleName,
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
FROM
	Person p_1
WHERE
	p_1.PersonID = 1

