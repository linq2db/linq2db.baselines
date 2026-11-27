-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."Key"
FROM
	"GroupByKeyValueTable" c_1
GROUP BY
	c_1."Key"
ORDER BY
	SUM(c_1."Value") DESC

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"GroupByKeyValueTable" t1

