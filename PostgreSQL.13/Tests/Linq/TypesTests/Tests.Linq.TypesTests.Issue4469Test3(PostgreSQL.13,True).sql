BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Integer"::Float / 33::float8,
	v."Decimal"::Float / 33::float8,
	v."Double" / 33::float8
FROM
	"Issue4469Table" v
LIMIT 2

