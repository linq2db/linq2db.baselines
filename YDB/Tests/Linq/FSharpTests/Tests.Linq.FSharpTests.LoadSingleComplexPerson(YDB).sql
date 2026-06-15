-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.MiddleName as MiddleName,
	p.LastName as LastName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = $p
LIMIT 2

