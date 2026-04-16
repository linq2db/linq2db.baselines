-- Oracle.11.Managed Oracle11

SELECT
	MIN(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue"),
	MAX(t."IntValue") KEEP (DENSE_RANK LAST ORDER BY t."DoubleValue" DESC)
FROM
	"WindowFunctionTestEntity" t

