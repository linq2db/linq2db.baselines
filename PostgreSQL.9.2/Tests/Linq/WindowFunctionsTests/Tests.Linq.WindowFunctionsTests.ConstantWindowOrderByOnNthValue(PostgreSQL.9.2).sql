-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER ()
FROM
	"WindowFunctionTestEntity" t

