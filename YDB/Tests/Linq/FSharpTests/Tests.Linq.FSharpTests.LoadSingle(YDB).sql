-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = $p

