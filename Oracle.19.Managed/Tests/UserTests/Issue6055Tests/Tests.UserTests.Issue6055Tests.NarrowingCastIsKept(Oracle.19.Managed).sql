-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(r.A + r.B AS Decimal(28, 10)) as "c1"
FROM
	"DecimalTable" r
FETCH NEXT 2 ROWS ONLY

