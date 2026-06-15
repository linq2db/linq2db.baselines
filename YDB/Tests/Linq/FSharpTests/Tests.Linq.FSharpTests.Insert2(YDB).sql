-- YDB Ydb

SELECT
	MAX(t1.PersonID) as Max_1
FROM
	Person t1

-- YDB Ydb
DECLARE $Gender Text(1) -- String
SET     $Gender = 'M'u
DECLARE $Name_FirstName Text(2) -- String
SET     $Name_FirstName = 'fn'u
DECLARE $Name_MiddleName Text -- String
SET     $Name_MiddleName = ''u
DECLARE $Name_LastName Text(2) -- String
SET     $Name_LastName = 'ln'u

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

-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.MiddleName as MiddleName,
	p.LastName as LastName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID > 4
LIMIT 2

-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

