-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"Issue4469Table" v
LIMIT 2

