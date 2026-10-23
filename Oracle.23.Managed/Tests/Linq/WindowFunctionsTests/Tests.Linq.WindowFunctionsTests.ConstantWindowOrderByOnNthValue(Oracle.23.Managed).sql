-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" t

