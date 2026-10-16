-- Informix.DB2 Informix
SELECT
	e.Id,
	CASE
		WHEN Nvl(j.Span, INTERVAL(0 00:00:00.00000) DAY TO FRACTION(5)) < e.Span
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Nvl(j.Span, INTERVAL(0 00:00:00.00000) DAY TO FRACTION(5)) = INTERVAL(0 00:00:00.00000) DAY TO FRACTION(5)
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedSpanEntity e
		LEFT JOIN MissedSpanEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Span
FROM
	MissedSpanEntity t1

