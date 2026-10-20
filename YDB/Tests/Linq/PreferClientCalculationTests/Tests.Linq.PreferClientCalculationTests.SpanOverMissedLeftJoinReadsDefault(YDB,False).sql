-- YDB Ydb
SELECT
	e.Id as Id,
	CASE
		WHEN Coalesce(j.Span, Interval('P0D')) < e.Span THEN 'y'u
		ELSE 'n'u
	END as Shorter,
	CASE
		WHEN Coalesce(j.Span, Interval('P0D')) = Interval('P0D')
			THEN 'y'u
		ELSE 'n'u
	END as Zero
FROM
	MissedSpanEntity e
		LEFT JOIN MissedSpanEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Span as Span
FROM
	MissedSpanEntity t1

