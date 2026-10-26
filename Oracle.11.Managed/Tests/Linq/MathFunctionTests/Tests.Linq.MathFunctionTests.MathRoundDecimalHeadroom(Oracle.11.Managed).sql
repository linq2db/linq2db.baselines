-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5D THEN ROUND(r.D * 0.5D, 0) * 2
		ELSE ROUND(r.D, 0)
	END,
	CASE
		WHEN r.D - FLOOR(r.D) = 0.5D THEN ROUND(r.D * 0.5D, 0) * 2
		ELSE ROUND(r.D, 0)
	END,
	ROUND(r.D)
FROM
	"HeadroomValues" r
ORDER BY
	r."Id"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1.D
FROM
	"HeadroomValues" t1

