-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(5) -- String
SET     Name = 'Smith'u
DECLARE Age Int32
SET     Age = 2

INSERT INTO SkipOnUpdateTable
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
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(6) -- String
SET     Name = 'Franki'u
DECLARE Age Int32
SET     Age = 15
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateTable
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateTable.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(4) -- String
SET     Name = 'Jack'u
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateTable
SET
	Name = $Name
WHERE
	SkipOnUpdateTable.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

