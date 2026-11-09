-- YDB Ydb
DECLARE gender Text(1) -- StringFixedLength
SET     gender = 'F'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	$gender = CASE
		WHEN p.PersonID > 3 THEN 'M'u
		WHEN p.PersonID > 2 THEN 'O'u
		ELSE 'F'u
	END

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

