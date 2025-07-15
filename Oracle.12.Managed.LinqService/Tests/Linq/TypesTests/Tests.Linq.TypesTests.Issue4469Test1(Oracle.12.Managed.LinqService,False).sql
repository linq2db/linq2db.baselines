BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @param Int32
SET     @param = 33

SELECT
	v."Integer" / :param as "Integer_1",
	v."Decimal" / :param as "Decimal_1",
	v."Double" / :param as "Double_1"
FROM
	"Issue4469Table" v
FETCH NEXT 2 ROWS ONLY

