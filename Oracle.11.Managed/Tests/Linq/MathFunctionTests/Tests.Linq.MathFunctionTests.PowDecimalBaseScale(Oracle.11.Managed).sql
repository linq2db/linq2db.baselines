-- Oracle.11.Managed Oracle11
SELECT
	Power(1.00005, r.E) + r.D
FROM
	"PowBaseScale" r
WHERE
	ROWNUM <= 2

