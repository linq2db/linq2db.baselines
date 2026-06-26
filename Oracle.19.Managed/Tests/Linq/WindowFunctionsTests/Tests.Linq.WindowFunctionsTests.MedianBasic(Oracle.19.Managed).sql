-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	MEDIAN(t."IntValue") OVER (PARTITION BY t."CategoryId")
FROM
	"WindowFunctionTestEntity" t

