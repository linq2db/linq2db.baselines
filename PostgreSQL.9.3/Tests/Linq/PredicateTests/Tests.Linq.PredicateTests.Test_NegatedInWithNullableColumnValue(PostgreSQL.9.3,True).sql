-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	r."Value5" <> r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NOT NULL OR
	r."Value5" IS NOT NULL AND r."Value4" IS NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	NOT ((r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL) AND NOT (r."Value5" IS NULL AND r."Value4" IS NOT NULL) AND NOT (r."Value5" IS NOT NULL AND r."Value4" IS NULL) OR r."Value5" = r."Value1" AND r."Value5" IS NOT NULL)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	CASE
		WHEN r."Value5" = r."Value4" OR r."Value5" IS NULL AND r."Value4" IS NULL
			THEN True
		ELSE False
	END
FROM
	"BooleanTable" r

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

