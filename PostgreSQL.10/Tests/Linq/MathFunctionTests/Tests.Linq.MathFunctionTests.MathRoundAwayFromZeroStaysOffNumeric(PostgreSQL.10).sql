-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	CASE
		WHEN r."F" >= 0 THEN FLOOR(r."F" * POWER(10, r."P") + 0.5) / POWER(10, r."P")
		ELSE CEIL(r."F" * POWER(10, r."P") - 0.5) / POWER(10, r."P")
	END
FROM
	"ResidueValues" r
ORDER BY
	r."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."F",
	t1."P"
FROM
	"ResidueValues" t1

