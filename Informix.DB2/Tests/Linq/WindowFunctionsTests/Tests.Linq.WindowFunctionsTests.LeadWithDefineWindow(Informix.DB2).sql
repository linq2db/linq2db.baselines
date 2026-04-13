-- Informix.DB2 Informix

SELECT
	t.Id,
	LEAD(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

