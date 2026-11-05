-- Informix.DB2 Informix
SELECT
	r.Id,
	CASE
		WHEN r.C IS NULL THEN CASE
			WHEN r.A = r.B OR r.A IS NULL AND r.B IS NULL THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
		ELSE r.Flag
	END::BOOLEAN
FROM
	NullableFlagTable r

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.Flag
FROM
	NullableFlagTable t1

