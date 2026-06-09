-- YDB Ydb
DECLARE $Ids0_1 Text(1) -- AnsiStringFixedLength
SET     $Ids0_1 = 'M'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.Gender IN ($Ids0_1)

