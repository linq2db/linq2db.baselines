-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	(
		SELECT
			SUM(i."DecimalValueN")
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

