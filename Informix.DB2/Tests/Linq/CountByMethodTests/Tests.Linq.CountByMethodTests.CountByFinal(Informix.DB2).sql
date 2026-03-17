-- Informix.DB2 Informix

SELECT
	g_1.TestId,
	COUNT(*)
FROM
	TestTable g_1
GROUP BY
	g_1.TestId
ORDER BY
	g_1.TestId

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.TestId
FROM
	TestTable t1

