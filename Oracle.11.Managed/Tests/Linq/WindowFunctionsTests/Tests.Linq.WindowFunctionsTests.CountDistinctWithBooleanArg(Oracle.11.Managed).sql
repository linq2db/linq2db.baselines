-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	COUNT(DISTINCT CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END) OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

