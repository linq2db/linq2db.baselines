-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	RANK() OVER (ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	))
FROM
	"WindowFunctionTestEntity" t

