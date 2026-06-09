-- YDB Ydb

SELECT
	MAX(t1.PersonID) as Max_1
FROM
	Person t1

-- YDB Ydb
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'M'u
DECLARE $Name_FirstName Text(2) -- String
SET     $Name_FirstName = 'fn'u
DECLARE $Name_MiddleName Text -- String
SET     $Name_MiddleName = NULL
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
DECLARE $id Int32
SET     $id = 4

SELECT
	p2.PersonID as ID,
	p2.Gender as Gender,
	p2.FirstName as FirstName,
	p2.MiddleName as MiddleName,
	p2.LastName as LastName
FROM
	Person p2
WHERE
	p2.PersonID > $id OR p2.PersonID = 0
LIMIT 2

