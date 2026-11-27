-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(4) -- String
SET     Name = 'Paul'u
DECLARE Age Int32
SET     Age = 14

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE Name Text(4) -- String
SET     Name = 'Mary'u
DECLARE Age Int32
SET     Age = 15

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

