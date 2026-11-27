-- PostgreSQL.9.2 PostgreSQL
SELECT
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"NumericDivisionTable" v
LIMIT 2

