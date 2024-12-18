BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestConstantsData

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO TestConstantsData
(
	Id,
	GuidValue,
	GuidNullableValue,
	StringValue
)
VALUES
(1,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),'StrValue')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	e.GuidValue,
	e.GuidNullableValue,
	e.StringValue
FROM
	TestConstantsData e
WHERE
	e.GuidValue = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	e.GuidNullableValue = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11') AND
	e.GuidNullableValue IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.GuidValue,
	t1.GuidNullableValue,
	t1.StringValue
FROM
	TestConstantsData t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestConstantsData

