-- Informix.DB2 Informix

SELECT
	t.Id,
	LAG(t.IntValue, 2) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

