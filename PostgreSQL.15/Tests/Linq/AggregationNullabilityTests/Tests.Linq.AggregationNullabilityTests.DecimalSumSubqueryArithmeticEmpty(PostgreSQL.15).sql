-- PostgreSQL.15 PostgreSQL

SELECT
	o."Anchor" - Coalesce((
		SELECT
			SUM(i."DecimalValue")
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

