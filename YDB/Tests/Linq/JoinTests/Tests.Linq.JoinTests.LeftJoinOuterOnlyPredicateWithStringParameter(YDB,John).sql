-- YDB Ydb
DECLARE $name Text(4) -- String
SET     $name = 'John'u

SELECT
	p.PersonID as PersonID,
	d.Taxonomy as Taxonomy
FROM
	Person p
		LEFT JOIN Doctor d ON d.PersonID = CASE
			WHEN p.FirstName = $name THEN p.PersonID
			WHEN p.PersonID IS NULL THEN p.PersonID
			ELSE NULL
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

-- YDB Ydb
SELECT
	t1.PersonID as PersonID,
	t1.Taxonomy as Taxonomy
FROM
	Doctor t1

