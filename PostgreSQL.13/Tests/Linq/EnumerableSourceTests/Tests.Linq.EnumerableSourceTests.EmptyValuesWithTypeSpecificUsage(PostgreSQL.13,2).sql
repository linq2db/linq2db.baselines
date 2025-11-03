-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."Id",
	SUM(g_1."Id")
FROM
	(SELECT NULL::Int "Id" WHERE 1 = 0) g_1("Id")
GROUP BY
	g_1."Id"

