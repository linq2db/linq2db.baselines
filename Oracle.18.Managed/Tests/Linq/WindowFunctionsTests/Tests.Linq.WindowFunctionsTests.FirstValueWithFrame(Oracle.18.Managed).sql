-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	FIRST_VALUE(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	"WindowFunctionTestEntity" t

