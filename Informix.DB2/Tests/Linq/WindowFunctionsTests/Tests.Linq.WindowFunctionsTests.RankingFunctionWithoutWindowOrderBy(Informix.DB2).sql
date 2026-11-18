-- Informix.DB2 Informix
SELECT
	t.Id,
	t.CategoryId,
	ROW_NUMBER() OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

