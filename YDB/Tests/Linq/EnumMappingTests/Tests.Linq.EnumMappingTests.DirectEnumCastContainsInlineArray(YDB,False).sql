-- YDB Ydb
DECLARE Ids0_1 Text(1) -- AnsiStringFixedLength
SET     Ids0_1 = 'F'u
DECLARE Ids0_2 Text(1) -- AnsiStringFixedLength
SET     Ids0_2 = 'U'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.Gender IN ($Ids0_1, $Ids0_2)

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

