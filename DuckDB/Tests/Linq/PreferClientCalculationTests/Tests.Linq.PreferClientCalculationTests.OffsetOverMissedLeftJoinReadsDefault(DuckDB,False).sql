-- DuckDB
SELECT
	e.Id,
	CASE
		WHEN Coalesce(j.Moment, '0001-01-01 00:00:00+00'::TIMESTAMPTZ) > e.Moment
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Moment, '0001-01-01 00:00:00+00'::TIMESTAMPTZ) <= e.Moment
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

-- DuckDB
SELECT
	t1.Id,
	t1.Moment
FROM
	MissedMomentEntity t1

-- DuckDB
SELECT
	EXTRACT(year FROM Coalesce(j.Moment, '0001-01-01 00:00:00+00'::TIMESTAMPTZ))
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

