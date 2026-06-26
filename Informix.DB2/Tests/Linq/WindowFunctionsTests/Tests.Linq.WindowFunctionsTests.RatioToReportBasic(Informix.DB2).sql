-- Informix.DB2 Informix

SELECT
	t.Id,
	t.IntValue::Float / SUM(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

