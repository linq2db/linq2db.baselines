-- Informix.DB2 Informix
SELECT
	x.Id,
	ROW_NUMBER() OVER (ORDER BY x.IntValue = 20, x.Id),
	ROW_NUMBER() OVER (PARTITION BY CASE
		WHEN x.IntValue = 20 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END ORDER BY x.Id)
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

