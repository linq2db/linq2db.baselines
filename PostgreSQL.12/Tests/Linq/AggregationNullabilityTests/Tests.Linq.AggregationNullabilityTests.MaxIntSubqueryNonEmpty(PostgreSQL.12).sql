-- PostgreSQL.12 PostgreSQL12
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

