BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 33

SELECT
	v."Integer" / :param,
	v."Decimal" / :param,
	v."Double" / :param
FROM
	"Issue4469Table" v
LIMIT 2

