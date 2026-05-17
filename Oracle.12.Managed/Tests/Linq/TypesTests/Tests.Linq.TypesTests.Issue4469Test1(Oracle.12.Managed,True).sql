-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	v."Integer" / 33 as "Integer_1",
	v."Decimal" / 33 as "Decimal_1",
	v."Double" / 33 as "Double_1"
FROM
	"Issue4469Table" v
FETCH NEXT 2 ROWS ONLY

