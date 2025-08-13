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
	addSeconds(r.SomeNullableDateTimeOffset, 10) >= toDateTime64('2019-08-08 08:08:18.0000000', 7)

