-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.FirstName LIKE 'J%'u ESCAPE '~'s AND (p.PersonID = 1 OR p.LastName = 'fail'u)
LIMIT 1

