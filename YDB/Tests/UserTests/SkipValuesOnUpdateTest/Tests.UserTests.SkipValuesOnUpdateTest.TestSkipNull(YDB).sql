-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Name Text(5) -- String
SET     Name = 'Tommy'u
DECLARE Age Int32
SET     Age = NULL

INSERT INTO SkipOnUpdateNulls
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
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(4) -- String
SET     Name = 'Jack'u
DECLARE Age Int32
SET     Age = 2
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateNulls
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateNulls.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- YDB Ydb
DECLARE Name Text(6) -- String
SET     Name = 'Franki'u
DECLARE Id Int32
SET     Id = 1

UPDATE
	SkipOnUpdateNulls
SET
	Name = $Name
WHERE
	SkipOnUpdateNulls.Id = $Id

-- YDB Ydb
SELECT
	t.Id as Id,
	t.Name as Name,
	t.Age as Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

