-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	NTILE(4) OVER (ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	))
FROM
	"WindowFunctionTestEntity" t

