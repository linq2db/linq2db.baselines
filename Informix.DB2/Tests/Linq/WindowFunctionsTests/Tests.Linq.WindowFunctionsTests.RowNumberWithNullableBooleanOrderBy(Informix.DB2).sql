-- Informix.DB2 Informix
SELECT
	x.Id,
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN x.NullableIntValue IS NULL THEN NULL
		WHEN x.NullableIntValue > 40 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END, x.Id)
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

