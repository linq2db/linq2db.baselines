-- Informix.DB2 Informix
SELECT
	r.Id,
	CASE
		WHEN r.C IS NULL THEN CASE
			WHEN r.Flag = 't'::BOOLEAN THEN 't'::BOOLEAN
			WHEN r.Flag = 'f'::BOOLEAN THEN 'f'::BOOLEAN
			ELSE NULL
		END
		WHEN r.A IS NULL THEN 't'::BOOLEAN
		ELSE CASE
			WHEN r.Flag = 't'::BOOLEAN THEN 't'::BOOLEAN
			WHEN r.Flag = 'f'::BOOLEAN THEN 'f'::BOOLEAN
			ELSE NULL
		END
	END
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

