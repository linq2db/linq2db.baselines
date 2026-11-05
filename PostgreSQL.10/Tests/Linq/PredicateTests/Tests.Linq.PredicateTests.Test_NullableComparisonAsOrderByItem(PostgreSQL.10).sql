-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"BooleanTable" r
ORDER BY
	r."Value1" <> r."Value4" OR r."Value4" IS NULL,
	r."Id"

