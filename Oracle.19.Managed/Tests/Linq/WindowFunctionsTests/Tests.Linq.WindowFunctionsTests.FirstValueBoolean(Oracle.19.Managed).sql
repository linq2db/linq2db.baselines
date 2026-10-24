-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	FIRST_VALUE(CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	FIRST_VALUE(t."IntValue") OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

