-- PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

