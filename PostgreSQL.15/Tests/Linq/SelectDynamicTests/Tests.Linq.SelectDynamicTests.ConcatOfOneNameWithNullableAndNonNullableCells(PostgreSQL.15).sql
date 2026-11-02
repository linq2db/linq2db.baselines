-- PostgreSQL.15 PostgreSQL12
SELECT
	x."Id",
	x."Usd"
FROM
	"Amounts" x
WHERE
	x."Id" = 1
UNION ALL
SELECT
	x_1."Id",
	CASE
		WHEN x_1."Id" = 2 THEN NULL
		ELSE x_1."Usd"
	END
FROM
	"Amounts" x_1
WHERE
	x_1."Id" = 2

