-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	COUNT(DISTINCT t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

