-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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
	o."Id" = 1
LIMIT 1

