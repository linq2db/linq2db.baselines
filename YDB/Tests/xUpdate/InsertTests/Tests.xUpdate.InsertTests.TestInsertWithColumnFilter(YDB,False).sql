-- YDB Ydb
DECLARE $FirstName Text(18) -- String
SET     $FirstName = 'InsertColumnFilter'u
DECLARE $LastName Text(8) -- String
SET     $LastName = 'whatever'u
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	$FirstName,
	$LastName,
	$Gender
)

-- YDB Ydb
DECLARE $FirstName Text(18) -- String
SET     $FirstName = 'InsertColumnFilter'u

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
LIMIT 1

-- YDB Ydb
DECLARE $newName Text(18) -- String
SET     $newName = 'InsertColumnFilter'u

DELETE FROM
	Person
WHERE
	Person.FirstName = $newName

