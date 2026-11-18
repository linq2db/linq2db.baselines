-- ClickHouse.Driver ClickHouse
INSERT INTO CoarseNullableEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime('2026-06-01 10:00:00'),
	NULL
)

-- ClickHouse.Driver ClickHouse
INSERT INTO CoarseNullableEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime('2026-06-01 11:00:00'),
	toDateTime('2026-06-01 13:00:00')
)

-- ClickHouse.Driver ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(Coalesce(r.FinishedOn, r.StartedOn), 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(Coalesce(r.FinishedOn, r.StartedOn)), 7))) / 100)
FROM
	CoarseNullableEventRow r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(Coalesce(r.FinishedOn, r.StartedOn), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(10000)
FROM
	CoarseNullableEventRow r
ORDER BY
	r.Id

