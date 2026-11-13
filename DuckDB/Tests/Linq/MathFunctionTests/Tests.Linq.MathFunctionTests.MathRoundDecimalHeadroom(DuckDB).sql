-- DuckDB
SELECT
	r.Id,
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN CASE
			WHEN FLOOR(r.D) % 2 = 0 THEN FLOOR(r.D)
			ELSE FLOOR(r.D) + 1
		END
		ELSE ROUND(r.D, 0)
	END,
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN CASE
			WHEN FLOOR(r.D) % 2 = 0 THEN FLOOR(r.D)
			ELSE FLOOR(r.D) + 1
		END
		ELSE ROUND(r.D, 0)
	END,
	ROUND(r.D)
FROM
	HeadroomValues r
ORDER BY
	r.Id

-- DuckDB
SELECT
	t1.Id,
	t1.D
FROM
	HeadroomValues t1

