-- YDB Ydb
DECLARE $FirstName Text(18) -- String
SET     $FirstName = 'UpdateColumnFilter'u
DECLARE $LastName Text(8) -- String
SET     $LastName = 'whatever'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Gender Text(1) -- AnsiStringFixedLength
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

-- YDB Ydb
DECLARE $FirstName Text(18) -- String
SET     $FirstName = 'UpdateColumnFilter'u

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
WHERE
	x.FirstName = $FirstName
LIMIT 2

-- YDB Ydb
DECLARE $FirstName Text(25) -- String
SET     $FirstName = 'UpdateColumnFilterUpdated'u
DECLARE $ID Int32
SET     $ID = 5

UPDATE
	Person
SET
	FirstName = $FirstName
WHERE
	Person.PersonID = $ID

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 5

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
WHERE
	x.PersonID = $ID
LIMIT 2

-- YDB Ydb
DECLARE $FirstName Text(25) -- String
SET     $FirstName = 'UpdateColumnFilterUpdated'u
DECLARE $LastName Text(25) -- String
SET     $LastName = 'UpdateColumnFilterUpdated'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u
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
DECLARE $ID Int32
SET     $ID = 5

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID = $ID
LIMIT 2

