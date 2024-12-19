BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestConstantsData

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TestConstantsData
(
	Id                Int32,
	GuidValue         UUID,
	GuidNullableValue Nullable(UUID),
	StringValue       Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestConstantsData
(
	Id,
	GuidValue,
	GuidNullableValue,
	StringValue
)
VALUES
(
	1,
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),
	'StrValue'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = 1 AND e.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.Id = 1 AND e.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestConstantsData

