BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @param Int32
SET     @param = 33
DECLARE @param_1 Decimal(2, 0)
SET     @param_1 = 33
DECLARE @param_2 Decimal(2, 0)
SET     @param_2 = 33

SELECT
	CAST(v."Integer" AS Decimal(28, 10)) / :param as "Integer_1",
	v."Decimal" / :param_1 as "Decimal_1",
	v."Double" / :param_2 as "Double_1"
FROM
	"Issue4469Table" v
FETCH NEXT 2 ROWS ONLY

