BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Integer"::decimal / 33::decimal(2),
	v."Decimal" / 33::decimal(2),
	v."Double" / 33::decimal(2)
FROM
	"Issue4469Table" v
LIMIT 2

