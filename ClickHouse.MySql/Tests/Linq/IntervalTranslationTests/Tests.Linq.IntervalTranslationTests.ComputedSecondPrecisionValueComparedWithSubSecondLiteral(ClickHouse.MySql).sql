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
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) < toDateTime64('2026-06-01 10:00:00.5000000', 7)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	toDateTime64('2026-06-01 10:00:00.5000000', 7) > Coalesce(r.FinishedOn, r.StartedOn)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) = toDateTime64('2026-06-01 10:00:00.5000000', 7)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			FIRST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as First_1
		FROM
			CoarseNullableEventRow r
	) t1
WHERE
	t1.First_1 < toDateTime64('2026-06-01 10:00:00.5000000', 7)

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

