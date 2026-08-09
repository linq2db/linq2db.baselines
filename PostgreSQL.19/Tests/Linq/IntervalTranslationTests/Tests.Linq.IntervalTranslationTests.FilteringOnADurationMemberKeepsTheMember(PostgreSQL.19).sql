-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	(r."Grace"::BigInt * 10000000)::Float / 600000000 > 30
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	(r."Required"::BigInt * 10000000)::Float / 600000000 > 30
ORDER BY
	r."Id"

