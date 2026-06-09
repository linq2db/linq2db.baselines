-- YDB Ydb
DECLARE $FirstName Text(3) -- String
SET     $FirstName = '123'u
DECLARE $LastName Text(3) -- String
SET     $LastName = '456'u
DECLARE $MiddleName Text(3) -- String
SET     $MiddleName = '789'u
DECLARE $Gender Text(1) -- String
SET     $Gender = 'M'u

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
DECLARE $id Int32
SET     $id = 5

SELECT
	t.PersonID as PersonID,
	t.FirstName as FirstName,
	t.LastName as LastName,
	t.MiddleName as MiddleName,
	t.Gender as Gender
FROM
	Person t
WHERE
	t.PersonID = $id
LIMIT 1

