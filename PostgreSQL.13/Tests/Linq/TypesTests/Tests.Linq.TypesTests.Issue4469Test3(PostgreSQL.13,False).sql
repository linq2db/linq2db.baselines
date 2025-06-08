BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Numeric -- Decimal
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT
	v."Integer"::Float / :param,
	v."Decimal"::Float / :param_1,
	v."Double" / :param_2
FROM
	"Issue4469Table" v
LIMIT 2

