-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	CAST(Floor(CASE
		WHEN r.D - FLOOR(r.D) = 0.5 THEN ROUND(r.D * 0.5, 0) * 2
		ELSE ROUND(r.D, 0)
	END) AS Int),
	CAST(Floor(CASE
		WHEN r.F - FLOOR(r.F) = 0.5D THEN ROUND(r.F * 0.5D, 0) * 2
		ELSE ROUND(r.F, 0)
	END) AS Int)
FROM
	"MidpointValues" r
ORDER BY
	r."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1.D,
	t1.F
FROM
	"MidpointValues" t1

