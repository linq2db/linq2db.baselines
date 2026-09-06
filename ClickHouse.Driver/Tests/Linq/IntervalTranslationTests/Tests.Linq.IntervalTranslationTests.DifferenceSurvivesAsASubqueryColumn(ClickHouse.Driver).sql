-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Taken
FROM
	(
		SELECT
			intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) as Taken,
			toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000) as TotalHours,
			r.Id as Id
		FROM
			EventRow r
	) t1
WHERE
	t1.TotalHours > toFloat64(3)
ORDER BY
	t1.Id

