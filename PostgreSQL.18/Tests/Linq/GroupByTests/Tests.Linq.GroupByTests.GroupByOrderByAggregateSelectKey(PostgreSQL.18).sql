-- PostgreSQL.18 PostgreSQL12
SELECT
	c_1."Key"
FROM
	"GroupByKeyValueTable" c_1
GROUP BY
	c_1."Key"
ORDER BY
	SUM(c_1."Value") DESC

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"GroupByKeyValueTable" t1

