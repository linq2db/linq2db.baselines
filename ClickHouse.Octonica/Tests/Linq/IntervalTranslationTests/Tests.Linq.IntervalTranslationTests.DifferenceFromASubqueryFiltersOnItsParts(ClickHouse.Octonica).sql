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
	toDateTime64('2026-01-01 15:00:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 11:00:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	EventRow x
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(x.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100))) / toFloat64(36000000000) > toFloat64(3)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	EventRow x
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(x.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24)) = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	EventRow x
ORDER BY
	intDiv(toUnixTimestamp64Nano(x.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)) DESC

-- ClickHouse.Octonica ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(x.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100))
FROM
	EventRow x
ORDER BY
	x.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))
FROM
	EventRow r
ORDER BY
	r.Id

