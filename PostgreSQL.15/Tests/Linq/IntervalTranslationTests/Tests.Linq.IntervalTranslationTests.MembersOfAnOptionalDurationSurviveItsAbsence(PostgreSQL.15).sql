-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	Floor((((r."Grace"::BigInt * 10000000) / 600000000)::decimal % 60)::decimal)::Int,
	(r."Grace"::BigInt * 10000000)::Float / 600000000,
	(r."Required"::BigInt * 10000000)::Float / 600000000
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

