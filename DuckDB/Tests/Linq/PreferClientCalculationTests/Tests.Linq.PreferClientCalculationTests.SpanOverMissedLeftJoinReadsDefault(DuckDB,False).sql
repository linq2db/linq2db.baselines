-- DuckDB
SELECT
	e.Id,
	CASE
		WHEN Coalesce(j.Span, '00:00:00'::INTERVAL) < e.Span THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Span, '00:00:00'::INTERVAL) = '00:00:00'::INTERVAL
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedSpanEntity e
		LEFT JOIN MissedSpanEntity j ON j.Id = e.Id + 1000

-- DuckDB
SELECT
	t1.Id,
	t1.Span
FROM
	MissedSpanEntity t1

