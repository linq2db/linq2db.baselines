-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	AVG(DISTINCT t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

