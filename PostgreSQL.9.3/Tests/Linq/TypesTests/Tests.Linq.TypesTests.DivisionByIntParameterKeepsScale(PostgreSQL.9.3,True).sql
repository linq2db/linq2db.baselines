-- PostgreSQL.9.3 PostgreSQL
SELECT
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"NumericDivisionTable" v
LIMIT 2

