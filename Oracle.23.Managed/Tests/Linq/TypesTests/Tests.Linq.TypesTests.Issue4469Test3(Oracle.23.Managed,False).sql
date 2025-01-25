BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @param Int32
SET     @param = 33D
DECLARE @param_1 Decimal
SET     @param_1 = 33D
DECLARE @param_2 BinaryDouble -- Double
SET     @param_2 = 33D

SELECT
	CAST(v."Integer" AS Float) / :param as "Integer_1",
	CAST(v."Decimal" AS Float) / :param_1 as "Decimal_1",
	v."Double" / :param_2 as "Double_1"
FROM
	"Issue4469Table" v
FETCH NEXT 2 ROWS ONLY

