BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Numeric(2, 0) -- Decimal
SET     @param_1 = 33
DECLARE @param_2 Numeric(2, 0) -- Decimal
SET     @param_2 = 33

SELECT
	v."Integer"::decimal / :param,
	v."Decimal" / :param_1,
	v."Double" / :param_2
FROM
	"Issue4469Table" v
LIMIT 2

