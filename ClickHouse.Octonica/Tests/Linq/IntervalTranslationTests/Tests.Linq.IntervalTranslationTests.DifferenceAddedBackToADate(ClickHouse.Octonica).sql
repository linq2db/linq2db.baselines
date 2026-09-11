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
	toDateTime64('2026-01-03 13:30:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.FinishedOn,
	r.StartedOn,
	toHour(r.FinishedOn)
FROM
	EventRow r
LIMIT 2

