-- DuckDB
SELECT
	r.Id,
	CAST(Floor(CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN CASE
			WHEN FLOOR(r.D) % 2 = 0 THEN FLOOR(r.D)
			ELSE FLOOR(r.D) + 1
		END
		ELSE ROUND(r.D, 0)
	END) AS INTEGER),
	CAST(Floor(CASE
		WHEN r.F - FLOOR(r.F) = 0.5 THEN ROUND(r.F * 0.5, 0) * 2
		ELSE ROUND(r.F, 0)
	END) AS INTEGER)
FROM
	MidpointValues r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.D,
	t1.F
FROM
	MidpointValues t1

