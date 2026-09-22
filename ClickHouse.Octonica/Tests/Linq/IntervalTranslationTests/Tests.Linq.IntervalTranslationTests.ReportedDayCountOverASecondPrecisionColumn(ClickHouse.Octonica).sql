-- ClickHouse.Octonica ClickHouse
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
	toDateTime('2026-06-01 10:00:00'),
	toDate32('2026-06-01'),
	toDate32('2026-06-01')
)

-- ClickHouse.Octonica ClickHouse
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
	2,
	toDateTime('2026-05-25 10:00:00'),
	toDateTime('2026-05-25 10:00:00'),
	toDate32('2026-05-25'),
	toDate32('2026-05-25')
)

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt32(toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(maxOrNull(grp.StartedOn), 7)) - toUnixTimestamp64Nano(toDateTime64(minOrNull(grp.StartedOn), 7)), toInt64(100))) / toFloat64(864000000000)) + 1
FROM
	CoarseEventRow grp
LIMIT 2

