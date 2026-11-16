-- YDB Ydb
DECLARE api Text(1) -- AnsiStringFixedLength
SET     api = 'F'u

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	$api IN (p.Gender)

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

