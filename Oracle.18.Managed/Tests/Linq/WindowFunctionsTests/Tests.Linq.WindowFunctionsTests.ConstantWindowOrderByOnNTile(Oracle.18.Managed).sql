-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	NTILE(4) OVER (ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	))
FROM
	"WindowFunctionTestEntity" t

