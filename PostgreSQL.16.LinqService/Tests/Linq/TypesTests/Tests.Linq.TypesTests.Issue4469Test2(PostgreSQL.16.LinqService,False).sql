BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Numeric(2, 0) -- Decimal
SET     @param = 33
DECLARE @param_1 Numeric(2, 0) -- Decimal
SET     @param_1 = 33

SELECT
	v."Integer"::decimal / :param,
	v."Decimal" / :param_1,
	v."Double" / :param
FROM
	"Issue4469Table" v
LIMIT 2

