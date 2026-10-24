-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(1) -- String
SET     $Name = 'a'u
DECLARE $Age Int32
SET     $Age = 5

INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	$Id,
	$Name,
	$Age
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Name Text -- String
SET     $Name = NULL
DECLARE $Age Int32
SET     $Age = NULL

INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	$Id,
	$Name,
	$Age
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3
DECLARE $Name Text(1) -- String
SET     $Name = 'b'u
DECLARE $Age Int32
SET     $Age = 7

INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	$Id,
	$Name,
	$Age
)

-- YDB Ydb
SELECT
	x.Id as Id,
	x.Name as Name,
	x.Age as Age
FROM
	OptRow x
WHERE
	x.Name IS NULL

