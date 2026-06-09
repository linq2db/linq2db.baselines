-- YDB Ydb

INSERT INTO TestBool
(
	Id,
	`Value`
)
VALUES
(
	1,
	NULL
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TestBool t1
LIMIT 2

-- YDB Ydb

UPDATE
	TestBool
SET
	`Value` = NOT TestBool.`Value`

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TestBool t1
LIMIT 2

-- YDB Ydb

UPDATE
	TestBool
SET
	`Value` = NULL
WHERE
	TestBool.Id = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TestBool t1
LIMIT 2

