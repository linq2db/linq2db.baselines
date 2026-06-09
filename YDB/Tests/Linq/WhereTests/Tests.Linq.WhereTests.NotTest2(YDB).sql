-- YDB Ydb
DECLARE $n Int32
SET     $n = 2

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = 1 AND NOT (p.MiddleName IS NOT NULL AND p.PersonID = $n)

