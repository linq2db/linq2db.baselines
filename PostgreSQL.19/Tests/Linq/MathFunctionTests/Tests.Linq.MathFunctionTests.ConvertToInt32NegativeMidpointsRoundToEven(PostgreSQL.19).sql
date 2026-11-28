-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id",
	Floor(CASE
		WHEN r."D" - FLOOR(r."D") = 0.5 THEN ROUND(r."D" * 0.5, 0) * 2
		ELSE ROUND(r."D", 0)
	END)::Int,
	Floor(CASE
		WHEN r."F"::decimal - FLOOR(r."F"::decimal) = 0.5 THEN ROUND(r."F"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."F"::decimal, 0)
	END::Float)::Int
FROM
	"MidpointValues" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."D",
	t1."F"
FROM
	"MidpointValues" t1

