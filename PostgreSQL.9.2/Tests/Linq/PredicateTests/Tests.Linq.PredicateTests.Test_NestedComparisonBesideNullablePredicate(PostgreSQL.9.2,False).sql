-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	(r."Value4" > r."Value5" AND r."Value4" IS NOT NULL AND r."Value5" IS NOT NULL) = ((r."Value2" = r."Value5"))

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

