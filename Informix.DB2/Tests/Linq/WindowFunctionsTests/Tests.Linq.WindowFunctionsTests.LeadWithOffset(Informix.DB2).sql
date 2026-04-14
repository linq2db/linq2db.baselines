-- Informix.DB2 Informix

SELECT
	t.Id,
	LEAD(t.IntValue, 2) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

