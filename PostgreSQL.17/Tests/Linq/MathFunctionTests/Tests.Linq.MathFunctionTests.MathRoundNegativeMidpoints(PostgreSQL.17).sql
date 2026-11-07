-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."D" - FLOOR(r."D") = 0.5 THEN ROUND(r."D" * 0.5, 0) * 2
		ELSE ROUND(r."D", 0)
	END,
	CASE
		WHEN r."D" - FLOOR(r."D") = 0.5 THEN ROUND(r."D" * 0.5, 0) * 2
		ELSE ROUND(r."D", 0)
	END,
	CASE
		WHEN r."D" > 0 THEN FLOOR(r."D" + 0.5)
		ELSE CEIL(r."D" - 0.5)
	END,
	CASE
		WHEN r."F"::decimal - FLOOR(r."F"::decimal) = 0.5 THEN ROUND(r."F"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."F"::decimal, 0)
	END::Float,
	CASE
		WHEN r."F"::decimal - FLOOR(r."F"::decimal) = 0.5 THEN ROUND(r."F"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."F"::decimal, 0)
	END::Float,
	CASE
		WHEN r."F" > 0 THEN FLOOR(r."F" + 0.5)
		ELSE CEIL(r."F" - 0.5)
	END
FROM
	"MidpointValues" r
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."D",
	t1."F"
FROM
	"MidpointValues" t1

