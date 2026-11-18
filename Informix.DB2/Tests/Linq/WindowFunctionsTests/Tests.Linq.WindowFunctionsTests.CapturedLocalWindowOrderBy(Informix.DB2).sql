-- Informix.DB2 Informix
SELECT
	t.Id,
	ROW_NUMBER() OVER ()
FROM
	WindowFunctionTestEntity t

