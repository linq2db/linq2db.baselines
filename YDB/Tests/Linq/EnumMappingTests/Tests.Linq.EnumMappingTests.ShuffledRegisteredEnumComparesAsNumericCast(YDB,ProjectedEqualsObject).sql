-- YDB Ydb
DECLARE boxed Text(1) -- AnsiStringFixedLength
SET     boxed = 'M'u

SELECT
	p.PersonID as PersonID,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.Gender = $boxed

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

