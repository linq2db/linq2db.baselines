-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	x."Id",
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN x."NullableIntValue" IS NULL THEN NULL
		WHEN x."NullableIntValue" > 40 THEN True
		ELSE False
	END, x."Id")
FROM
	"WindowFunctionTestEntity" x
ORDER BY
	x."Id"

