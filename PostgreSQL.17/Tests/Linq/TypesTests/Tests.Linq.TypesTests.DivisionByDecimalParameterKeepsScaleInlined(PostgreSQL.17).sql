-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	v."Integer"::decimal / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"NumericDivisionTable" v
LIMIT 2

