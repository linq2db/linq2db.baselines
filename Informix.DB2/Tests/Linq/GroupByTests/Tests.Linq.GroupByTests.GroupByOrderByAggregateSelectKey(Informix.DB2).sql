-- Informix.DB2 Informix
SELECT
	c_1."Key"
FROM
	GroupByKeyValueTable c_1
GROUP BY
	c_1."Key"
ORDER BY
	SUM(c_1."Value") DESC

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Key",
	t1."Value"
FROM
	GroupByKeyValueTable t1

