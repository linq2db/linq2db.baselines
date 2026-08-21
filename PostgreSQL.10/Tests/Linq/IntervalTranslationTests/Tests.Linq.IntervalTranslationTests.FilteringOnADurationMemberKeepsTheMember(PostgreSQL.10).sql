-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Grace" > 1800
ORDER BY
	r."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	r."Required" > 1800
ORDER BY
	r."Id"

