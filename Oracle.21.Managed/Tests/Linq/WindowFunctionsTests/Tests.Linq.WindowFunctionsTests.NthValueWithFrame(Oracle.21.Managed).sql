-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	"WindowFunctionTestEntity" t

