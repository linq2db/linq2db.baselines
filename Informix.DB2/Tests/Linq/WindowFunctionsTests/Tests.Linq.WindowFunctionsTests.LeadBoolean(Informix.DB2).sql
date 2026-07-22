-- Informix.DB2 Informix
SELECT
	t.Id,
	LEAD(CASE
		WHEN t.IntValue = 20 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END) OVER (ORDER BY t.Id)::BOOLEAN,
	LEAD(t.IntValue) OVER (ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

