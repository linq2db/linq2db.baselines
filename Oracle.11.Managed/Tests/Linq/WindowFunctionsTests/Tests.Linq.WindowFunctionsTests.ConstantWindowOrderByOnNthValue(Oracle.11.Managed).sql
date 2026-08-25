-- Oracle.11.Managed Oracle11
SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" t

