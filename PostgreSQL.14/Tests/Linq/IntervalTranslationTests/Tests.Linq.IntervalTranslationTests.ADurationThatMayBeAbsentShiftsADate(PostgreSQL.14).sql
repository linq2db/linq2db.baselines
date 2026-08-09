-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	'2026-03-01'::date + ((r."Grace"::BigInt * 10000000) / 10) * Interval '1 microsecond',
	'2026-03-01'::date + ((r."Required"::BigInt * 10000000) / 10) * Interval '1 microsecond'
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

