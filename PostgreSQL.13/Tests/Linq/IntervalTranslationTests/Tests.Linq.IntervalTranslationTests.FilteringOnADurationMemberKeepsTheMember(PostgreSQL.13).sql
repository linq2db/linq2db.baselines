-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Grace" > 1800
ORDER BY
	r."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Required" > 1800
ORDER BY
	r."Id"

