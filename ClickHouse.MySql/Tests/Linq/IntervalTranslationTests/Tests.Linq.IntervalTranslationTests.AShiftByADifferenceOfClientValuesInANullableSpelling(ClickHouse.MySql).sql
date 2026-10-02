-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	r.DueOn + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.DueOn - toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(NULL) * toInt64(100))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.DueOn + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	r.DueOn + toIntervalNanosecond(toInt64(3600250000000)) > addHours(r.StartedOn, toFloat64(1))
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	r.Id = 1 AND r.StartedOn + toIntervalNanosecond(toInt64(3600250000000)) < addHours(r.StartedOn, toFloat64(1))

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(3600250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(NULL) * toInt64(100))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.StartedOn + toIntervalNanosecond(toInt64(7200250000000))
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.DueOn + toIntervalNanosecond(intDiv(toUnixTimestamp64Nano(r.DueOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) * toInt64(100))
FROM
	OptionalDueRow r
ORDER BY
	r.Id

