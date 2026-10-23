-- ClickHouse.Octonica ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 12:00:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(3600250000000))
FROM
	EventRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toDateTime64(r.FinishedOn, 7) - toIntervalNanosecond(toInt64(3600250000000))
FROM
	EventRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	EventRow r
WHERE
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(3600250000000)) < r.FinishedOn

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	EventRow r
WHERE
	toDateTime64(r.FinishedOn, 7) - toIntervalNanosecond(toInt64(3600250000000)) > addHours(r.StartedOn, toFloat64(1))

