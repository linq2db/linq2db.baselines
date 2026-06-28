-- Informix.DB2 Informix

SELECT
	t.Id,
	LAG(t.IntValue) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

