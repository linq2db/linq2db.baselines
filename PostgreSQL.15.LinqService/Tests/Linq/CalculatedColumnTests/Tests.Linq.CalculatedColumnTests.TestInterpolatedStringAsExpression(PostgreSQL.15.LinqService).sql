BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."StrVal",
	t1."IntVal",
	CASE
		WHEN NOT (t1."StrVal" IS NULL OR Length(t1."StrVal") = 0)
			THEN t1."StrVal"
		ELSE t1."IntVal"::text
	END,
	Coalesce(CASE
		WHEN NOT (t1."StrVal" IS NULL OR Length(t1."StrVal") = 0)
			THEN t1."StrVal"
		ELSE t1."IntVal"::text
	END, '')
FROM
	"InterpolatedStringTable" t1
ORDER BY
	t1."Id"

