﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1855Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1855Table
(
	Id,
	SomeDateTimeOffset
)
VALUES
(
	2,
	toDateTime64('2019-08-08 08:08:08.0000000', 7)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.SomeDateTimeOffset,
	r.SomeNullableDateTimeOffset
FROM
	Issue1855Table r
WHERE
	toDateTime64('2019-08-08 08:08:18.0000000', 7) <> r.SomeDateTimeOffset

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1855Table

