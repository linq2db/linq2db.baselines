-- PostgreSQL.18 PostgreSQL12
SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" t

