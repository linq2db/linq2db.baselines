-- Informix.DB2 Informix
SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CASE
		WHEN r.Value4 > r.Value5 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value2 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

