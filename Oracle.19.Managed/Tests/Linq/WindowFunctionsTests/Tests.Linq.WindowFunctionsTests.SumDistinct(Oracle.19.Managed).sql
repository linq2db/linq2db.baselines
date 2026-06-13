-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	SUM(DISTINCT t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

