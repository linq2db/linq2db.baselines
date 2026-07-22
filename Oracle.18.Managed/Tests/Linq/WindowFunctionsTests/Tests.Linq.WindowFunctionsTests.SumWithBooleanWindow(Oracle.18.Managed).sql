-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	SUM(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END, t."Id"),
	SUM(t."IntValue") OVER (PARTITION BY CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END ORDER BY t."Id"),
	SUM(t."IntValue") OVER (PARTITION BY CASE
		WHEN t."NullableIntValue" IS NOT NULL THEN 1
		ELSE 0
	END ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

