-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	NullableFlagTable r
ORDER BY
	CASE
		WHEN r.A = r.B OR r.A IS NULL AND r.B IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END,
	r.Id

