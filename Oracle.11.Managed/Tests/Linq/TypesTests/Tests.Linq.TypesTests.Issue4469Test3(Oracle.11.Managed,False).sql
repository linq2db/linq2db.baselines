BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param BinaryDouble -- Double
SET     @param = 33D
DECLARE @param_1 Decimal
SET     @param_1 = 33D

SELECT
	CAST(v."Integer" AS Float) / :param,
	CAST(v."Decimal" AS Float) / :param_1,
	v."Double" / :param
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

