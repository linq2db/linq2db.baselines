BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 33D
DECLARE @param_1 Decimal
SET     @param_1 = 33D
DECLARE @param_2 BinaryDouble -- Double
SET     @param_2 = 33D

SELECT
	CAST(v."Integer" AS Float) / :param,
	CAST(v."Decimal" AS Float) / :param_1,
	v."Double" / :param_2
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

