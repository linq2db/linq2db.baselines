-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(4) -- String
SET     Name = 'John'u

INSERT INTO SkipOnInsertCache
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
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(4) -- String
SET     Name = 'John'u
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnInsertCache
SET
	Name = $Name
WHERE
	SkipOnInsertCache.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

