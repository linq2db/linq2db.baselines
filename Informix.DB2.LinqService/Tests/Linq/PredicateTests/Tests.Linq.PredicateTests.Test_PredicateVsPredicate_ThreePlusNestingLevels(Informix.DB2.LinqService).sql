BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
			WHEN r.Value1 = r.Value4 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL
				THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
		WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
		WHEN r.Value4 = r.Value1 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
		WHEN r.Value4 = r.Value1 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
		WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
			WHEN r.Value1 = r.Value2 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value2 <> r.Value4 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN r.Value1 = r.Value4 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
			WHEN r.Value2 = r.Value5 THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN CASE
			WHEN r.Value4 <> r.Value1 OR r.Value4 IS NULL THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN r.Value4 = r.Value5 OR r.Value4 IS NULL AND r.Value5 IS NULL
				THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

