-- Informix.DB2 Informix
UPDATE
	NullableFlagTable t1
SET
	Flag = CASE
		WHEN t1.A = t1.B OR t1.A IS NULL AND t1.B IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

-- Informix.DB2 Informix
SELECT
	r.Id,
	r.Flag
FROM
	NullableFlagTable r
ORDER BY
	r.Id

