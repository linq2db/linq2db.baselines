BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param Decimal(2, 0)
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33

SELECT
	CAST(v."Integer" AS Decimal(28, 10)) / :param,
	v."Decimal" / :param_1,
	v."Double" / :param
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

