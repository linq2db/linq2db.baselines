-- YDB Ydb
DECLARE $Code Text(5) -- String
SET     $Code = 'Child'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(4) -- String
SET     $Name = 'Jane'u
DECLARE $IsMale Bool -- Boolean
SET     $IsMale = false

INSERT INTO Base
(
	Code,
	Id,
	Name,
	IsMale
)
VALUES
(
	$Code,
	$Id,
	$Name,
	$IsMale
)

-- YDB Ydb
DECLARE $Code Text(6) -- String
SET     $Code = 'Child2'u
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text -- String
SET     $Name = NULL
DECLARE $Age Int32
SET     $Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Name,
	Age
)
VALUES
(
	$Code,
	$Id,
	$Name,
	$Age
)

-- YDB Ydb

SELECT
	e.Code as Code,
	e.Id as Id,
	e.Name as Name,
	e.IsMale as IsMale,
	e.Age as Age
FROM
	Base e
WHERE
	CASE
		WHEN e.Code = 'Child2'u OR e.Code = 'Child'u OR e.Code = 'BaseChild'u
			THEN true
		ELSE e.Id = 0
	END
ORDER BY
	e.Id

