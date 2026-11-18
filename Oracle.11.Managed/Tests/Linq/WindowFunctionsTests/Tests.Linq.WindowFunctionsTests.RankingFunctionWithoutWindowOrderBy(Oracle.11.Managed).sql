-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	t."CategoryId",
	ROW_NUMBER() OVER (PARTITION BY t."CategoryId" ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	))
FROM
	"WindowFunctionTestEntity" t

