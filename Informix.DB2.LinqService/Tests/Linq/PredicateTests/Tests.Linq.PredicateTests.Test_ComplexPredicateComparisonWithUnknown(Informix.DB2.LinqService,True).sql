BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	BooleanTable r
WHERE
	r.Value1 = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (r.Value1 <> r.Value2) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 <> r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END <> CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END OR
	CASE
		WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
		WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 't'::BOOLEAN
		WHEN NOT ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + @cnt))
			THEN 'f'::BOOLEAN
		ELSE NULL
	END IS NULL

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
			WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
			WHEN (r.Value1 <> r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r.Value1 = r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 = r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END <> CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END OR CASE
			WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL OR CASE
			WHEN (r.Value1 <> r.Value4) THEN 't'::BOOLEAN
			WHEN NOT (r.Value1 <> r.Value4) THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NOT NULL AND CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END IS NULL
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 = r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN CASE
			WHEN (r.Value1 <> r.Value2) THEN 't'::BOOLEAN
			ELSE 'f'::BOOLEAN
		END = CASE
			WHEN ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 't'::BOOLEAN
			WHEN NOT ((
				SELECT
					COUNT(*)
				FROM
					BooleanTable r_1
				WHERE
					r_1.Value1 = 1
			) = (r.Value5 + @cnt))
				THEN 'f'::BOOLEAN
			ELSE NULL
		END
			THEN 'f'::BOOLEAN
		ELSE 't'::BOOLEAN
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + @cnt) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + @cnt) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + @cnt) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + @cnt) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value4 + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 + @cnt) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 + @cnt) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 + @cnt) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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
DECLARE @cnt Integer(4) -- Int32
SET     @cnt = 18

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
		WHEN (1=1) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END = CASE
		WHEN (r.Value2 + @cnt) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
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

