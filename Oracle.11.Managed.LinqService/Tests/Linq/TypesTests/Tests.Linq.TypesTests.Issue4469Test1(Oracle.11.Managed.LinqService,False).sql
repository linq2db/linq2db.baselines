BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 33

SELECT
	v."Integer" / :param,
	v."Decimal" / :param,
	v."Double" / :param
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

