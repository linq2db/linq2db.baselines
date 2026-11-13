-- Informix.DB2 Informix
SELECT
	r.Id,
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN ROUND(r.D * 0.5, 0) * 2
		ELSE ROUND(r.D, 0)
	END,
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN ROUND(r.D * 0.5, 0) * 2
		ELSE ROUND(r.D, 0)
	END,
	ROUND(r.D)
FROM
	HeadroomValues r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.D
FROM
	HeadroomValues t1

