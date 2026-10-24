-- Oracle.19.Managed Oracle.Managed Oracle12
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

