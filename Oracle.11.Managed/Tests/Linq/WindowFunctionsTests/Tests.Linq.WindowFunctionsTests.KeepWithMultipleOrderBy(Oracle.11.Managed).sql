-- Oracle.11.Managed Oracle11

SELECT
	SUM(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY t."DoubleValue", t."Id" DESC) OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

