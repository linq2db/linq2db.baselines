-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

