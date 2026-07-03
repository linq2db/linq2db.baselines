-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	LEAD(t."IntValue") IGNORE NULLS OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

