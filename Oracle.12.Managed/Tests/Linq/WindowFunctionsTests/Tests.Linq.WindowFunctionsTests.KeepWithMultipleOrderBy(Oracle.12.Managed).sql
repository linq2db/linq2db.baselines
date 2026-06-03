-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	SUM(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue", t."Id" DESC) OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

