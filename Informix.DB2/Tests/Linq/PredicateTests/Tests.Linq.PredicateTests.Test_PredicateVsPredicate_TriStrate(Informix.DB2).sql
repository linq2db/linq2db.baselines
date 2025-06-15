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
		WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END

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
		WHEN (r.Value1 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN (r.Value4 = r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value2) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (r.Value4 = r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value2) THEN 'f'::BOOLEAN
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
		WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
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
		WHEN (r.Value1 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN (r.Value4 = r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value2) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (r.Value4 = r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value2) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r.Value1 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (r.Value4 = r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value2) THEN 'f'::BOOLEAN
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
		WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 = r.Value1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

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
		WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value2 = r.Value1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

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
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN (r.Value5 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (r.Value5 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 = r.Value4) THEN 'f'::BOOLEAN
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
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN (r.Value5 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (r.Value5 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r.Value4 = r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 = r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (r.Value5 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 = r.Value4) THEN 'f'::BOOLEAN
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
		WHEN r.Value1 >= r.Value2 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 <> r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END

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
		WHEN r.Value1 >= r.Value5 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 <> r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value2) THEN 'f'::BOOLEAN
		ELSE NULL
	END

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
		WHEN r.Value1 >= r.Value2 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value4 <> r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value5) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value4 <> r.Value5) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value5) THEN 'f'::BOOLEAN
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
		WHEN r.Value1 >= r.Value5 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value4 <> r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value2) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value4 <> r.Value2) THEN 't'::BOOLEAN
		WHEN NOT (r.Value4 <> r.Value2) THEN 'f'::BOOLEAN
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
		WHEN r.Value1 >= r.Value2 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 <> r.Value1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

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
		WHEN r.Value1 >= r.Value2 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value2 <> r.Value1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

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
		WHEN r.Value4 >= r.Value5 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value5 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END

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
		WHEN r.Value4 >= r.Value5 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (r.Value5 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value5 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value5 <> r.Value4) THEN 'f'::BOOLEAN
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

