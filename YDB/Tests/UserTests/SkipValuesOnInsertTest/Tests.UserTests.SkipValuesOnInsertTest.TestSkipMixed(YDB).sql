-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(5) -- String
SET     Name = 'Jason'u
DECLARE Age Int32
SET     Age = 20

INSERT INTO SkipOnInsertMixed
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
	SkipOnInsertMixed t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Age Int32
SET     Age = 20
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnInsertMixed
SET
	Age = $Age
WHERE
	SkipOnInsertMixed.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE Age Int32
SET     Age = 25

INSERT INTO SkipOnInsertMixed
(
	Id,
	Age
)
VALUES
(
	$Id,
	$Age
)

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 2
LIMIT 1

-- YDB Ydb
DECLARE Name Text(5) -- String
SET     Name = 'Jessy'u
DECLARE Age Int32
SET     Age = 25
DECLARE Id Int32
SET     Id = 2

UPDATE
	SkipOnInsertMixed
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnInsertMixed.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 2
LIMIT 1

