-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	MIN(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId"),
	MAX(t."IntValue") KEEP (DENSE_RANK LAST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

