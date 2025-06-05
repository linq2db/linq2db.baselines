BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @param Double
SET     @param = 33
DECLARE @param_1 Double
SET     @param_1 = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param_1,
	v."Double" / :param
FROM
	"Issue4469Table" v
LIMIT 2

