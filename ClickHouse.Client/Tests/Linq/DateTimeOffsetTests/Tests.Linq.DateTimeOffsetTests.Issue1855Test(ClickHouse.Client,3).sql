BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1855Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1855Table
(
	Id                         Int32,
	SomeDateTimeOffset         DateTime64(7),
	SomeNullableDateTimeOffset Nullable(DateTime64(7)),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset,
	SomeNullableDateTimeOffset
)
VALUES
(
	1,
	toDateTime64('2019-08-08 08:08:08.0000000', 7),
	toDateTime64('2019-08-08 08:08:08.0000000', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	r.Id = 1 AND toDateTime64('2019-08-08 08:08:18.0000000', 7) <> r.SomeDateTimeOffset

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1855Table

