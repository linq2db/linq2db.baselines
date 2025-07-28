BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	v."Integer"::Float / 33::float8,
	v."Decimal"::Float / 33::float8,
	v."Double" / 33::float8
FROM
	"Issue4469Table" v
LIMIT 2

