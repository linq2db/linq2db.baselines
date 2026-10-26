-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."D"::decimal - FLOOR(r."D"::decimal) = 0.5 THEN ROUND(r."D"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."D"::decimal, 0)
	END::decimal(18, 1),
	CASE
		WHEN r."D"::decimal - FLOOR(r."D"::decimal) = 0.5 THEN ROUND(r."D"::decimal * 0.5, 0) * 2
		ELSE ROUND(r."D"::decimal, 0)
	END::decimal(18, 1),
	CASE
		WHEN r."D" > 0 THEN FLOOR(r."D" + 0.5)
		ELSE CEIL(r."D" - 0.5)
	END
FROM
	"HeadroomValues" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."D"
FROM
	"HeadroomValues" t1

