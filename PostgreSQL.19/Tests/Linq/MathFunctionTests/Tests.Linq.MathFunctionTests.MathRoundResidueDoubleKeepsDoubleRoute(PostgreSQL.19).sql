-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."F" >= 0 THEN FLOOR(r."F" * POWER(10, r."P") + 0.5) / POWER(10, r."P")
		ELSE CEIL(r."F" * POWER(10, r."P") - 0.5) / POWER(10, r."P")
	END,
	CASE
		WHEN r."F"::decimal * 2 = ROUND(r."F"::decimal * 2, r."P") AND r."F"::decimal <> ROUND(r."F"::decimal, r."P")
			THEN ROUND(r."F"::decimal / 2, r."P") * 2
		ELSE ROUND(r."F"::decimal, r."P")
	END::Float
FROM
	"ResidueValues" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."F",
	t1."P"
FROM
	"ResidueValues" t1

