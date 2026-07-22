-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	LAG(CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END) OVER (ORDER BY t."Id"),
	LAG(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

