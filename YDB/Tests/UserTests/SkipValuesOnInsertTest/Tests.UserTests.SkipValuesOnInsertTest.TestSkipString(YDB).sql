-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Age Int32
SET     Age = 14

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE Age Int32
SET     Age = 15

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

