-- ClickHouse.MySql ClickHouse
INSERT INTO CoarseEventRow
(
	Id,
	StartedOn,
	FinishedOn,
	OpenedOn,
	ClosedOn
)
VALUES
(
	1,
	toDateTime('2026-06-01 10:00:00'),
	toDateTime('2026-06-12 10:00:00'),
	toDate32('2026-06-01'),
	toDate32('2026-06-12')
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.OpenedOn,
	r.ClosedOn
FROM
	CoarseEventRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))
FROM
	CoarseEventRow r
LIMIT 2

