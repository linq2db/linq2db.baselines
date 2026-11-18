-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(FIRST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(FIRST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)), 7))) / 100),
	toInt64((toUnixTimestamp64Nano(toDateTime64(LAST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(LAST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)), 7))) / 100)
FROM
	CoarseNullableEventRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(LAG(r.StartedOn) OVER (ORDER BY r.Id), 7)), toInt64(100))) / toFloat64(10000),
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(LAG(r.StartedOn, 1, r.StartedOn) OVER (ORDER BY r.Id), 7)), toInt64(100))) / toFloat64(10000),
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(LEAD(r.StartedOn, 1, r.StartedOn) OVER (ORDER BY r.Id), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(10000),
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(NTH_VALUE(r.StartedOn, toInt64(2)) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(10000)
FROM
	CoarseNullableEventRow r

