-- PostgreSQL.9.5 PostgreSQL
DECLARE @param Double
SET     @param = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param,
	v."Double" / :param
FROM
	"NumericDivisionTable" v
LIMIT 2

