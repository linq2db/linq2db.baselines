BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param BinaryDouble -- Double
SET     @param = 33D

SELECT
	CAST(v."Integer" AS Float) / :param,
	CAST(v."Decimal" AS Float) / :param,
	v."Double" / :param
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

