-- YDB Ydb
DECLARE Gender Text(1) -- AnsiStringFixedLength
SET     Gender = 'M'u
DECLARE gender_1 Text(1) -- AnsiStringFixedLength
SET     gender_1 = 'F'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	CASE
		WHEN p.PersonID > 2 THEN p.Gender
		ELSE $Gender
	END = $gender_1

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

