-- Informix.DB2 Informix

SELECT
	t.Id,
	STDDEV_POP(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

