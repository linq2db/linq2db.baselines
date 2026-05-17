-- PostgreSQL.18 PostgreSQL

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
	o."Id" = 1
LIMIT 1

