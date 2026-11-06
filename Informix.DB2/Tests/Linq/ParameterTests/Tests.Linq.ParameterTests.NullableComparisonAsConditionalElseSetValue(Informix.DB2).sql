-- Informix.DB2 Informix
UPDATE
	SetFlagTable t1
SET
	F = CASE
		WHEN t1.C IS NULL THEN CASE
			WHEN t1.F = 't'::BOOLEAN THEN 't'::BOOLEAN
			WHEN t1.F = 'f'::BOOLEAN THEN 'f'::BOOLEAN
			ELSE NULL
		END
		WHEN t1.A = t1.B OR t1.A IS NULL AND t1.B IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

-- Informix.DB2 Informix
SELECT
	r.F
FROM
	SetFlagTable r
ORDER BY
	r.Id

