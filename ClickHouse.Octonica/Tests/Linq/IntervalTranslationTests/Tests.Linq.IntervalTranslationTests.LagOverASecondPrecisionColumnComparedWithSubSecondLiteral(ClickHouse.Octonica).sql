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
	(
		SELECT
			LAG(r.StartedOn, 1, r.StartedOn) OVER (ORDER BY r.Id) as Lag
		FROM
			CoarseNullableEventRow r
	) t1
WHERE
	t1.Lag < toDateTime64('2026-06-01 10:00:00.5000000', 7)

