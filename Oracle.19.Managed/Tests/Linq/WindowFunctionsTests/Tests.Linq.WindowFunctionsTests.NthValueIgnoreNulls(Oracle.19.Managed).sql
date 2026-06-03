-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) IGNORE NULLS OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

