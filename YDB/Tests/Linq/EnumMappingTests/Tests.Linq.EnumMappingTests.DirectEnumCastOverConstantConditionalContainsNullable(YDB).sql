-- YDB Ydb
DECLARE Ids0_1 Text(1) -- String
SET     Ids0_1 = 'F'u

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
		WHEN p.PersonID > 2 THEN 'M'u
		ELSE 'F'u
	END IN ($Ids0_1)

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

