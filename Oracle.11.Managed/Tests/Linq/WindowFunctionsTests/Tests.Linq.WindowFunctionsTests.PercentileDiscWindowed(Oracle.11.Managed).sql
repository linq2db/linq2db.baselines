-- Oracle.11.Managed Oracle11

SELECT
	t."Id",
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

