-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(
		SELECT
			MAX(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	)
FROM
	"Outer" o
WHERE
	o."Id" = 2
LIMIT 1

