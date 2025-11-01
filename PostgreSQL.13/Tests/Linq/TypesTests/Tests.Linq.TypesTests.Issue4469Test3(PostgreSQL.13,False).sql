-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @param Double
SET     @param = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param,
	v."Double" / :param
FROM
	"Issue4469Table" v
LIMIT 2

