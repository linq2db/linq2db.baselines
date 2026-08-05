-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	PERCENTILE_DISC(0.5D) WITHIN GROUP (ORDER BY t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

