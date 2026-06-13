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
RETURNING
	PersonID

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
RETURNING
	PersonID

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	xxPerson t1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	xxPerson p
WHERE
	p.FirstName = 'Steven'u AND p.LastName = 'King'u AND
	p.Gender = 'M'u

