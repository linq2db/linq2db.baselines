-- ClickHouse.Driver ClickHouse
INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 10:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	2,
	NULL,
	toDateTime64('2026-01-01 10:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	3,
	toDateTime64('2026-01-01 12:00:00.0000000', 7),
	toDateTime64('2026-01-01 10:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.DueOn, 7) + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.DueOn, 7) - toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(NULL) * toInt64(100))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.DueOn, 7) + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	toDateTime64(r.DueOn, 7) + toIntervalNanosecond(toInt64(3600250000000)) > addHours(r.StartedOn, toFloat64(1))
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	r.Id = 1 AND toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(3600250000000)) < addHours(r.StartedOn, toFloat64(1))

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(NULL) * toInt64(100))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.StartedOn, 7) + toIntervalNanosecond(toInt64(7200250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDateTime64(r.DueOn, 7) + toIntervalNanosecond(intDiv(toUnixTimestamp64Nano(toDateTime64(r.DueOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)) * toInt64(100))
FROM
	OptionalDueRow r
ORDER BY
	r.Id

