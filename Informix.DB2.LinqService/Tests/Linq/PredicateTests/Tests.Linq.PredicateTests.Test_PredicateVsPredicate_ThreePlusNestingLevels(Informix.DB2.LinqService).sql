BeforeExecute
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
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL)
			THEN 't'::BOOLEAN
		WHEN (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL)
			THEN 't'::BOOLEAN
		WHEN (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
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
		WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN CASE
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END = 'f'::BOOLEAN AND CASE
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN CASE
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END = 'f'::BOOLEAN AND CASE
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
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
	(CASE
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
		WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END OR CASE
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
		WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL) AND
	(CASE
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
		WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END OR CASE
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value2 = r.Value4 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN r.Value1 = r.Value4 AND r.Value4 IS NOT NULL THEN 't'::BOOLEAN
		WHEN r.Value1 <> r.Value4 OR r.Value4 IS NULL THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
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
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL)
			THEN 't'::BOOLEAN
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL)
			THEN 't'::BOOLEAN
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
		WHEN CASE
			WHEN r.Value1 <> r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END AND CASE
			WHEN r.Value2 = r.Value5 AND r.Value5 IS NOT NULL THEN 't'::BOOLEAN
			WHEN r.Value2 <> r.Value5 OR r.Value5 IS NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL) AND NOT (CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL)
			THEN 't'::BOOLEAN
		WHEN (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL) AND NOT (CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			WHEN r.Value4 = r.Value1 AND r.Value4 IS NOT NULL THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL)
				THEN 't'::BOOLEAN
			WHEN (r.Value4 <> r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL)
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL)
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

