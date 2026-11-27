-- PostgreSQL.18 PostgreSQL12
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

