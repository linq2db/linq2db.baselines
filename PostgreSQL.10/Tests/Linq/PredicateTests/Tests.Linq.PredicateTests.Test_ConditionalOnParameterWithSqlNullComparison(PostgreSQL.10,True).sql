-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	CASE
		WHEN r."A" = r."B" THEN True
		ELSE False
	END
FROM
	"NullableFlagTable" r
ORDER BY
	r."Id"

