BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	BooleanTable r
WHERE
	r.Value1 = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 = r_1.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 <> r_1.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 = r_1.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 <> r_1.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 = r_1.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (r_1.Value1 <> r_1.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END <> CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
		WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r_1.Value1 = r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 = r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r_1.Value1 <> r_1.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r_1.Value1 <> r_1.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 = r_1.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r_1.Value1 <> r_1.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END <> CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 't'::BOOLEAN
			WHEN NOT (t1.COUNT_1 = (r_1.Value5 + @cnt)) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
			THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value4 + @cnt) >= (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value4 + @cnt) > (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value4 + @cnt) <= (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value4 + @cnt) < (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value2 + @cnt) >= (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value2 + @cnt) > (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value2 + @cnt) <= (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	(r_1.Value2 + @cnt) < (t1.COUNT_1 + r_1.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value4 + @cnt) >= (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value4 + @cnt) > (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value4 + @cnt) <= (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value4 + @cnt) < (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value2 + @cnt) >= (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value2 + @cnt) > (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value2 + @cnt) <= (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r_1.Id,
	r_1.Value1,
	r_1.Value2,
	r_1.Value4,
	r_1.Value5
FROM
	BooleanTable r_1
		LEFT JOIN (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				BooleanTable r
			WHERE
				r.Value1 = 1
		) t1 ON 1=1
WHERE
	CASE
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r_1.Value2 + @cnt) < (t1.COUNT_1 + r_1.Value5) THEN 't'::BOOLEAN
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

