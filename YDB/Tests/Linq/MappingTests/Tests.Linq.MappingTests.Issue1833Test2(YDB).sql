-- YDB Ydb

SELECT
	e.PersonID as PersonID,
	e.FirstName as FirstName,
	e.LastName as LastName,
	e.FirstName || ':'u || e.LastName as MiddleName
FROM
	Person e
WHERE
	e.PersonID = 1
LIMIT 2

