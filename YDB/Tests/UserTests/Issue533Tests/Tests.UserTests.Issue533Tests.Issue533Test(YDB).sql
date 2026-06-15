-- YDB Ydb
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'M'u
DECLARE $FirstName Text(12) -- String
SET     $FirstName = 'FirstName533'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $LastName Text(11) -- String
SET     $LastName = 'LastName533'u

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
	$FirstName,
	$MiddleName,
	$LastName
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

