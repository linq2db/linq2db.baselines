-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	p_1.FirstName as FirstName
FROM
	Person p_1
WHERE
	p_1.PersonID = 1

