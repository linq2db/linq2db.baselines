-- YDB Ydb
DECLARE $FirstName Text(21) -- String
SET     $FirstName = 'test_inherited_insert'u
DECLARE $LastName Text(4) -- String
SET     $LastName = 'test'u
DECLARE $MiddleName Text(4) -- String
SET     $MiddleName = 'test'u
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'U'u

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	$FirstName,
	$LastName,
	$MiddleName,
	$Gender
)
RETURNING
	PersonID

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'u
LIMIT 1

-- YDB Ydb
DECLARE $FirstName Text(21) -- String
SET     $FirstName = 'test_inherited_insert'u
DECLARE $LastName Text(4) -- String
SET     $LastName = 'test'u
DECLARE $MiddleName Text(4) -- String
SET     $MiddleName = 'test'u
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'U'u
DECLARE $ID Int32
SET     $ID = 5

UPDATE
	Person
SET
	FirstName = $FirstName,
	LastName = $LastName,
	MiddleName = $MiddleName,
	Gender = $Gender
WHERE
	Person.PersonID = $ID

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'u
LIMIT 1

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 5

DELETE FROM
	Person
WHERE
	Person.PersonID = $ID

