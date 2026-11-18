-- Informix.DB2 Informix
SELECT
	t.Id,
	NTILE(4) OVER (ORDER BY (
		SELECT
			1
		FROM table(set{1})
	))
FROM
	WindowFunctionTestEntity t

