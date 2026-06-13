-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert15%'u ESCAPE '~'s

-- YDB Ydb
DECLARE $Gender Text(1) -- StringFixedLength
SET     $Gender = 'M'u
DECLARE $Name_FirstName Text(8) -- String
SET     $Name_FirstName = 'Insert15'u
DECLARE $Name_MiddleName Text -- String
SET     $Name_MiddleName = NULL
DECLARE $Name_LastName Text(8) -- String
SET     $Name_LastName = 'Insert15'u

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
	COUNT(*) as Count_1
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert15%'u ESCAPE '~'s

-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert15%'u ESCAPE '~'s

