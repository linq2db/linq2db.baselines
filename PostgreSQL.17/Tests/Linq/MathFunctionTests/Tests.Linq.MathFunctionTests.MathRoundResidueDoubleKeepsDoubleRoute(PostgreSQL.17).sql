-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

