-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t."CategoryId",
	MIN(t."IntValue") KEEP (DENSE_RANK FIRST ORDER BY CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END) OVER (PARTITION BY t."CategoryId"),
	MAX(t."IntValue") KEEP (DENSE_RANK LAST ORDER BY CASE
		WHEN t."NullableIntValue" IS NOT NULL THEN 1
		ELSE 0
	END) OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

