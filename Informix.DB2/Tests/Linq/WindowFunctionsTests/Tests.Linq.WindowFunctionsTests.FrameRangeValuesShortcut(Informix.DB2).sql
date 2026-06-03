-- Informix.DB2 Informix

SELECT
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	WindowFunctionTestEntity t

