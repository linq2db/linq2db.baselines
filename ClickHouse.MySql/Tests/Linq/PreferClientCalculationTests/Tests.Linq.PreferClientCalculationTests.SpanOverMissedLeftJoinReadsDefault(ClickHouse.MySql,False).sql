-- ClickHouse.MySql ClickHouse
SELECT
	e.Id,
	CASE
		WHEN Coalesce(j.Span, INTERVAL 0 SECOND) < e.Span THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Span, INTERVAL 0 SECOND) = INTERVAL 0 SECOND
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedSpanEntity e
		LEFT JOIN MissedSpanEntity j ON j.Id = e.Id + 1000

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Span
FROM
	MissedSpanEntity t1

