-- Oracle.11.Managed Oracle11
SELECT
	CAST(Power(CAST(r.D AS Float), CAST(0.00005 AS Float)) AS Decimal(18, 4)) + r.D
FROM
	"PowScale" r
WHERE
	ROWNUM <= 2

