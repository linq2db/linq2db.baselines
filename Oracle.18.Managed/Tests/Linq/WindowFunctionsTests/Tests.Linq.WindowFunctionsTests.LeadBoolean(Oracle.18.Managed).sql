-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	LEAD(CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END) OVER (ORDER BY t."Id"),
	LEAD(t."IntValue") OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

