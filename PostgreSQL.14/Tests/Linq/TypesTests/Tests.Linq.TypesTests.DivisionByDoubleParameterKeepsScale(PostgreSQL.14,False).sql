-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @param Double
SET     @param = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param,
	v."Double" / :param
FROM
	"NumericDivisionTable" v
LIMIT 2

