-- YDB Ydb

SELECT
	p.PersonID as ID,
	'123'u || p.FirstName || '456'u as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1 AND ('123'u || p.FirstName || '456'u) = '123John456'u

