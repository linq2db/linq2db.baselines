-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @param BinaryDouble -- Double
SET     @param = 33D

SELECT
	CAST(v."Integer" AS Float) / :param as "Integer_1",
	CAST(v."Decimal" AS Float) / :param as "Decimal_1",
	v."Double" / :param as "Double_1"
FROM
	"NumericDivisionTable" v
FETCH NEXT 2 ROWS ONLY

