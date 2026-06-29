-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	1000 - Coalesce((
		SELECT
			SUM(i."IntValue")
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), 0)
FROM
	"Outer" o
WHERE
	o."Id" = 2
LIMIT 1

