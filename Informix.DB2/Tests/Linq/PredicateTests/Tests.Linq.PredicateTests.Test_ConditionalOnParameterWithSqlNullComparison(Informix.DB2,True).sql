-- Informix.DB2 Informix
SELECT
	r.Id,
	CASE
		WHEN r.A = r.B THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	NullableFlagTable r
ORDER BY
	r.Id

