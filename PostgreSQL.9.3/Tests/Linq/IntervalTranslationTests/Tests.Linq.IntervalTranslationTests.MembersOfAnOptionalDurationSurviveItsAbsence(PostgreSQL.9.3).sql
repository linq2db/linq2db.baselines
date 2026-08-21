-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	Floor(((r."Grace" / 60)::decimal % 60)::decimal)::Int,
	r."Grace"::Float / 60,
	r."Required"::Float / 60
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

