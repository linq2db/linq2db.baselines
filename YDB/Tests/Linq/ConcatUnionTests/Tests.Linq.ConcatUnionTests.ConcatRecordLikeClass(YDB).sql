-- YDB Ydb

SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
FROM
	Person p_1

