-- Oracle.11.Managed Oracle11
SELECT
	c_1."Key"
FROM
	"GroupByKeyValueTable" c_1
GROUP BY
	c_1."Key"
ORDER BY
	SUM(c_1."Value") DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Key",
	t1."Value"
FROM
	"GroupByKeyValueTable" t1

