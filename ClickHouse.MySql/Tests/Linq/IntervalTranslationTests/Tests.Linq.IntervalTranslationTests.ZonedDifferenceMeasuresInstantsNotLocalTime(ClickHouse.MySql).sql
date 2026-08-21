-- ClickHouse.MySql ClickHouse
INSERT INTO ZonedEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 12:00:00.000000', 6),
	toDateTime64('2026-01-01 12:00:00.000000', 6)
)

-- ClickHouse.MySql ClickHouse
INSERT INTO ZonedEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime64('2026-01-01 10:00:00.000000', 6),
	toDateTime64('2026-01-01 12:00:00.000000', 6)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn,
	r.FinishedOn
FROM
	ZonedEventRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000)
FROM
	ZonedEventRow r
ORDER BY
	r.Id

