-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."Id",
	NTH_VALUE(t."IntValue", 2) OVER (PARTITION BY t."CategoryId" ORDER BY t."Id")
FROM
	"WindowFunctionTestEntity" t

