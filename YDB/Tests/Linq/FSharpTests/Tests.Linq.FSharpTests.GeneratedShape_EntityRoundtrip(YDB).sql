-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $FirstName Text(4) -- String
SET     $FirstName = 'John'u
DECLARE $MiddleName Text(1) -- String
SET     $MiddleName = 'Q'u
DECLARE $Age Int32
SET     $Age = 42

INSERT INTO GeneratedScaffoldPerson
(
	PersonID,
	FirstName,
	MiddleName,
	Age
)
VALUES
(
	$Id,
	$FirstName,
	$MiddleName,
	$Age
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $FirstName Text(4) -- String
SET     $FirstName = 'Jane'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Age Int32
SET     $Age = NULL

INSERT INTO GeneratedScaffoldPerson
(
	PersonID,
	FirstName,
	MiddleName,
	Age
)
VALUES
(
	$Id,
	$FirstName,
	$MiddleName,
	$Age
)

-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.MiddleName as MiddleName,
	p.Age as Age
FROM
	GeneratedScaffoldPerson p
WHERE
	p.PersonID = 1
LIMIT 2

-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.MiddleName as MiddleName,
	p.Age as Age
FROM
	GeneratedScaffoldPerson p
WHERE
	p.PersonID = 2
LIMIT 2

