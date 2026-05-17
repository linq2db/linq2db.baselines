-- PostgreSQL.18 PostgreSQL

SELECT
	(
		SELECT
			SUM(i."IntValueN")
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

