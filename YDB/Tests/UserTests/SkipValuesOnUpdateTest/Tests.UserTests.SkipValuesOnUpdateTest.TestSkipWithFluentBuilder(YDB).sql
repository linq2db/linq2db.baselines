-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text -- String
SET     Name = NULL
DECLARE Age Int32
SET     Age = 2

INSERT INTO SkipOnUpdateFluent
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
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(6) -- String
SET     Name = 'Franki'u
DECLARE Age Int32
SET     Age = 18
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateFluent
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateFluent.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(4) -- String
SET     Name = 'Jack'u
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateFluent
SET
	Name = $Name
WHERE
	SkipOnUpdateFluent.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

