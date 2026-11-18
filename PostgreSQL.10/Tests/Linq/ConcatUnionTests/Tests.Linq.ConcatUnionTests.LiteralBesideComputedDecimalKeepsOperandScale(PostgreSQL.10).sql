-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Abs(r."Value")
FROM
	"FineDecimalRow" r
UNION ALL
SELECT
	1.000000000005::decimal(18, 12)
FROM
	"FineDecimalRow" r_1

