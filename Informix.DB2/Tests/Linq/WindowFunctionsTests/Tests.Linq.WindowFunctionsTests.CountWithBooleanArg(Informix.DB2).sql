-- Informix.DB2 Informix
SELECT
	t.Id,
	COUNT(CASE
		WHEN t.IntValue = 20 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END) OVER (PARTITION BY t.CategoryId),
	COUNT(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

