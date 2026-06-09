-- YDB Ydb

INSERT INTO TestTempTable
(
	Id,
	`Value`
)
VALUES
(
	1,
	'value'u
)

-- YDB Ydb

CREATE TABLE TempTable
(
	Id      Int32,
	Renamed Text,

	PRIMARY KEY (Id)
)

-- YDB Ydb

INSERT INTO TempTable
(
	Id,
	Renamed
)
SELECT
	t1.Id as Id,
	t1.`Value` as `Value`
FROM
	TestTempTable t1

-- YDB Ydb

INSERT INTO TestTempTable
(
	Id,
	`Value`
)
VALUES
(
	2,
	'value 2'u
)

-- YDB Ydb

INSERT INTO TempTable
(
	Id,
	Renamed
)
VALUES
(
	2,
	'renamed 2'u
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TestTempTable t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Renamed as Value_1
FROM
	TempTable t1
ORDER BY
	t1.Id

-- YDB Ydb

DROP TABLE IF EXISTS TempTable

