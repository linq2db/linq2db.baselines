-- Informix.DB2 Informix

SELECT FIRST 1
	t1.Id,
	t1.TestId
FROM
	TestTable t1
ORDER BY
	t1.Id DESC,
	t1.TestId

