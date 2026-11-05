-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"NullableFlagTable" r
ORDER BY
	CASE
		WHEN r."A" = r."B" OR r."A" IS NULL AND r."B" IS NULL THEN True
		ELSE False
	END,
	r."Id"

