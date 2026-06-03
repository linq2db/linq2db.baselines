-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	LAST_VALUE(t."IntValue") IGNORE NULLS OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

