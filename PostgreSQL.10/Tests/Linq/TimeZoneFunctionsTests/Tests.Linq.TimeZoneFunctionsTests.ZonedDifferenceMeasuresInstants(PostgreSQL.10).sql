-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From ((
		SELECT
			b."Dto"
		FROM
			"ZonedRow" b
		WHERE
			b."Id" = 2
	) - r."Dto")) / 3600
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1
LIMIT 2

