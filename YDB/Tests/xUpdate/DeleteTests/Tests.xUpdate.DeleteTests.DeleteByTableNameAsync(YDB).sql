-- YDB Ydb
DECLARE $FirstName Text(6) -- String
SET     $FirstName = 'Steven'u
DECLARE $LastName Text(4) -- String
SET     $LastName = 'King'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u

INSERT INTO xxPerson
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

SELECT
	COUNT(*) as Count_1
FROM
	xxPerson t1

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	xxPerson t1
LIMIT 2

-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1

DELETE FROM
	xxPerson
WHERE
	xxPerson.PersonID = $ID

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	xxPerson t1

