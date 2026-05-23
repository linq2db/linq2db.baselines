-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MIN(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue"),
	MAX(t."IntValue") KEEP (DENSE_RANK LAST ORDER BY t."DoubleValue" DESC)
FROM
	"WindowFunctionTestEntity" t

