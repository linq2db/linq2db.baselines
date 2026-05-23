-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	MIN(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId"),
	MAX(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId"),
	SUM(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId"),
	AVG(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

