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

-- YDB Ydb
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'M'u
DECLARE $Name_FirstName Text(13) -- String
SET     $Name_FirstName = 'UpdateComplex'u
DECLARE $Name_MiddleName Text -- String
SET     $Name_MiddleName = NULL
DECLARE $Name_LastName Text(13) -- String
SET     $Name_LastName = 'UpdateComplex'u
DECLARE $ID Int32
SET     $ID = 5

UPDATE
	Person
SET
	Gender = $Gender,
	FirstName = $Name_FirstName,
	MiddleName = $Name_MiddleName,
	LastName = $Name_LastName
WHERE
	Person.PersonID = $ID

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

