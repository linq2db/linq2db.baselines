-- YDB Ydb
DECLARE $fm Text(1) -- AnsiStringFixedLength
SET     $fm = 'F'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.Gender <> $fm

