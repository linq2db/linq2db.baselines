-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	NTH_VALUE(CASE
		WHEN t."IntValue" = 20 THEN 1
		ELSE 0
	END, 2) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id"),
	NTH_VALUE(t."IntValue", 2) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t
ORDER BY
	t."Id"

