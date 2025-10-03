BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
			x."IntVal"
		FROM
			"InterpolatedStringTable" x
	) x_1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
			x."IntVal"
		FROM
			"InterpolatedStringTable" x
	) x_1

