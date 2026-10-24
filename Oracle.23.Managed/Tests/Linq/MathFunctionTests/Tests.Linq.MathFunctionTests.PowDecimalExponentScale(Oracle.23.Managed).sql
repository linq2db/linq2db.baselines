-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	CAST(Power(CAST(r.D AS Float), CAST(0.00005 AS Float)) AS Decimal(18, 4)) + r.D as "c1"
FROM
	"PowScale" r
FETCH NEXT 2 ROWS ONLY

