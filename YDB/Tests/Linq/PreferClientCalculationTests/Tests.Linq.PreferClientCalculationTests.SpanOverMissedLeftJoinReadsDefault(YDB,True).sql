-- YDB Ydb
SELECT
	e.Id as Id,
	j.Span as Span,
	e.Span as Span_1
FROM
	MissedSpanEntity e
		LEFT JOIN MissedSpanEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Span as Span
FROM
	MissedSpanEntity t1

