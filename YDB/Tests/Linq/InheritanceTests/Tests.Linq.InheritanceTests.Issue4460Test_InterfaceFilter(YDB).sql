-- YDB Ydb
DECLARE $Code Text(5) -- String
SET     $Code = 'Child'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'Jane'u

INSERT INTO Base
(
	Code,
	Id,
	Name
)
VALUES
(
	$Code,
	$Id,
	$Name
)

-- YDB Ydb
DECLARE $Code Text(6) -- String
SET     $Code = 'Child2'u
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Age Int32
SET     $Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Age
)
VALUES
(
	$Code,
	$Id,
	$Age
)

-- YDB Ydb

SELECT
	e.Code as Code,
	e.Id as Id,
	e.Name as Name,
	e.Age as Age
FROM
	Base e
WHERE
	e.Code <> 'Child'u OR e.Code IS NULL

