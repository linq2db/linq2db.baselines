-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) < toDateTime64('2026-06-01 10:00:00.5000000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	toDateTime64('2026-06-01 10:00:00.5000000', 7) > Coalesce(r.FinishedOn, r.StartedOn)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) = toDateTime64('2026-06-01 10:00:00.5000000', 7)

