-- Informix.DB2 Informix
SELECT
	t.Id,
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY t.Id),
	ROW_NUMBER() OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

