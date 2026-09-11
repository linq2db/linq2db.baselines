-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	MIN(DISTINCT t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

