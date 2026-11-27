-- Oracle.11.Managed Oracle11
DECLARE @param Int32
SET     @param = 33

SELECT
	v."Integer" / :param,
	v."Decimal" / :param,
	v."Double" / :param
FROM
	"NumericDivisionTable" v
WHERE
	ROWNUM <= 2

