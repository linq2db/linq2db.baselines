-- YDB Ydb
DECLARE $FirstName Text(4) -- String
SET     $FirstName = '擊敗奴隸'u
DECLARE $LastName Text(9) -- String
SET     $LastName = 'Юникодкин'u
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

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = '擊敗奴隸'u AND p.LastName = 'Юникодкин'u
LIMIT 2

