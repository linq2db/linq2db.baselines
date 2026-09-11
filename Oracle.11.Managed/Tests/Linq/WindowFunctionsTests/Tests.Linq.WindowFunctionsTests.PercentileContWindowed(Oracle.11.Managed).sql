-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	PERCENTILE_CONT(0.5D) WITHIN GROUP (ORDER BY t."DoubleValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

