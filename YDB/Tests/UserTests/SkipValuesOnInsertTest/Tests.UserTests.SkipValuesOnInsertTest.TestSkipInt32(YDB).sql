-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(5) -- String
SET     Name = 'Smith'u

INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
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
DECLARE Name Text(5) -- String
SET     Name = 'Tommy'u

INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	$Id,
	$Name
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

