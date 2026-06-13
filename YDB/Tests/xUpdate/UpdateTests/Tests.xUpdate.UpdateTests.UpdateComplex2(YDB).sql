-- YDB Ydb
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'M'u
DECLARE $Name_FirstName Text(13) -- String
SET     $Name_FirstName = 'UpdateComplex'u
DECLARE $Name_MiddleName Text -- String
SET     $Name_MiddleName = NULL
DECLARE $Name_LastName Text(5) -- String
SET     $Name_LastName = 'Empty'u

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	$Gender,
	$Name_FirstName,
	$Name_MiddleName,
	$Name_LastName
)
RETURNING
	PersonID

-- YDB Ydb

UPDATE
	Person
SET
	LastName = Person.FirstName
WHERE
	Person.FirstName LIKE 'UpdateComplex%'u ESCAPE '~'s

-- YDB Ydb
DECLARE $id Int32
SET     $id = 5

SELECT
	t1.PersonID as ID,
	t1.Gender as Gender,
	t1.FirstName as FirstName,
	t1.MiddleName as MiddleName,
	t1.LastName as LastName
FROM
	Person t1
WHERE
	t1.PersonID = $id
LIMIT 1

