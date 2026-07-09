-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	(
		SELECT
			AVG(i."IntValue")
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

