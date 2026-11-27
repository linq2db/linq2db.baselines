-- PostgreSQL.11 PostgreSQL
SELECT
	v."Integer"::Float / 33,
	v."Decimal"::Float / 33,
	v."Double" / 33
FROM
	"NumericDivisionTable" v
LIMIT 2

