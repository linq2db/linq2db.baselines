-- YDB Ydb
SELECT
	t.PersonID as PersonID,
	p2.FirstName as FirstName
FROM
	Person t
		CROSS JOIN Person p2
WHERE
	t.PersonID = p2.PersonID AND t.PersonID = 1

