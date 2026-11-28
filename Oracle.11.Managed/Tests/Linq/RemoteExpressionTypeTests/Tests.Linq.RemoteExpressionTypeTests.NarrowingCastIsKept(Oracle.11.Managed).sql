-- Oracle.11.Managed Oracle11
SELECT
	CAST(r.A + r.B AS Decimal(28, 10))
FROM
	"DecimalTable" r
WHERE
	ROWNUM <= 2

