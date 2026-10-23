-- Informix.DB2 Informix
SELECT
	t.Id,
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.IntValue = 20, t.Id),
	SUM(t.IntValue) OVER (PARTITION BY CASE
		WHEN t.IntValue = 20 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END ORDER BY t.Id),
	SUM(t.IntValue) OVER (PARTITION BY CASE
		WHEN t.NullableIntValue IS NOT NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

