-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	LEAD(t."IntValue", 2) OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

