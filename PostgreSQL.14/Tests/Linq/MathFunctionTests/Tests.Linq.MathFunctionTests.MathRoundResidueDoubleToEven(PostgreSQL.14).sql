-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	CASE
		WHEN r."F"::decimal * 2 = ROUND(r."F"::decimal * 2, r."P") AND r."F"::decimal <> ROUND(r."F"::decimal, r."P")
			THEN ROUND(r."F"::decimal / 2, r."P") * 2
		ELSE ROUND(r."F"::decimal, r."P")
	END::Float
FROM
	"ResidueValues" r
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."F",
	t1."P"
FROM
	"ResidueValues" t1

