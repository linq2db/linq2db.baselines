-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			5
		FROM SYS.DUAL
	) DESC),
	ROW_NUMBER() OVER (ORDER BY t."Id"),
	ROW_NUMBER() OVER (ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

