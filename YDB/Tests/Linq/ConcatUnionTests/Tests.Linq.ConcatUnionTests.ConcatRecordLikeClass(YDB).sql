-- YDB Ydb

SELECT
	p.PersonID as Id,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
UNION ALL
SELECT
	p_1.PersonID as Id,
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
FROM
	Person p_1

