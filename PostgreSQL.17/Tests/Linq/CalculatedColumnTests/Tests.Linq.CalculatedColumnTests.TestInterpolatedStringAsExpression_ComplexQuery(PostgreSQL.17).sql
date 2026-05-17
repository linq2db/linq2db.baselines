-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x_1."Id",
	CASE
		WHEN NOT (x_1."StrVal" IS NULL OR x_1."Length_1" = 0 AND x_1."Length_1" IS NOT NULL)
			THEN x_1."StrVal"
		ELSE x_1."IntVal"::text
	END,
	Coalesce(CASE
		WHEN NOT (x_1."StrVal" IS NULL OR x_1."Length_1" = 0 AND x_1."Length_1" IS NOT NULL)
			THEN x_1."StrVal"
		ELSE x_1."IntVal"::text
	END, '')
FROM
	(
		SELECT
			x."Id",
			x."StrVal",
			Length(x."StrVal") as "Length_1",
			x."IntVal",
			CASE
				WHEN NOT (x."StrVal" IS NULL OR Length(x."StrVal") = 0) THEN x."StrVal"
				ELSE x."IntVal"::text
			END as c1
		FROM
			"InterpolatedStringTable" x
	) x_1
ORDER BY
	x_1.c1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	x_1."Id",
	CASE
		WHEN NOT (x_1."StrVal" IS NULL OR x_1."Length_1" = 0 AND x_1."Length_1" IS NOT NULL)
			THEN x_1."StrVal"
		ELSE x_1."IntVal"::text
	END,
	Coalesce(CASE
		WHEN NOT (x_1."StrVal" IS NULL OR x_1."Length_1" = 0 AND x_1."Length_1" IS NOT NULL)
			THEN x_1."StrVal"
		ELSE x_1."IntVal"::text
	END, '')
FROM
	(
		SELECT
			x."Id",
			x."StrVal",
			Length(x."StrVal") as "Length_1",
			x."IntVal",
			Coalesce(CASE
				WHEN NOT (x."StrVal" IS NULL OR Length(x."StrVal") = 0) THEN x."StrVal"
				ELSE x."IntVal"::text
			END, '') as c1
		FROM
			"InterpolatedStringTable" x
	) x_1
ORDER BY
	x_1.c1

