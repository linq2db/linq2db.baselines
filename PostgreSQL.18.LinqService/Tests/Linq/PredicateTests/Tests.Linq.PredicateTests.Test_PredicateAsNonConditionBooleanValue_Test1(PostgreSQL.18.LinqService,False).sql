BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	r."Id",
	r."Value1" = r."Value2",
	r."Value1" <> r."Value2",
	r."Value1" > r."Value2",
	r."Value1" < r."Value2",
	r."Value1" >= r."Value2",
	r."Value1" <= r."Value2",
	CASE
		WHEN r."Value4" = r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NULL
			THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value4" <> r."Value5" OR r."Value4" IS NULL AND r."Value5" IS NOT NULL OR r."Value4" IS NOT NULL AND r."Value5" IS NULL
			THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value4" > r."Value5" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value4" < r."Value5" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value4" >= r."Value5" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value4" <= r."Value5" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value1" = r."Value4" THEN True
		ELSE False
	END,
	r."Value1" <> r."Value4" OR r."Value4" IS NULL,
	CASE
		WHEN r."Value1" > r."Value4" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value1" < r."Value4" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value1" >= r."Value4" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value1" <= r."Value4" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value5" = r."Value2" THEN True
		ELSE False
	END,
	r."Value5" <> r."Value2" OR r."Value5" IS NULL,
	CASE
		WHEN r."Value5" > r."Value2" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value5" < r."Value2" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value5" >= r."Value2" THEN True
		ELSE False
	END,
	CASE
		WHEN r."Value5" <= r."Value2" THEN True
		ELSE False
	END
FROM
	"BooleanTable" r
WHERE
	r."Id" <> -1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

