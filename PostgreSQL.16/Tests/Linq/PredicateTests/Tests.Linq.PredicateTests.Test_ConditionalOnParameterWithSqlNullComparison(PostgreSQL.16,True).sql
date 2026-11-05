-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

