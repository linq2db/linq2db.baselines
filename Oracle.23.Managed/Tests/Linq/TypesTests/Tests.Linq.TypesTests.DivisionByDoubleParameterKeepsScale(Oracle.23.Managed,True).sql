-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(v."Integer" AS Float) / 33D as "Integer_1",
	CAST(v."Decimal" AS Float) / 33D as "Decimal_1",
	v."Double" / 33D as "Double_1"
FROM
	"NumericDivisionTable" v
FETCH NEXT 2 ROWS ONLY

