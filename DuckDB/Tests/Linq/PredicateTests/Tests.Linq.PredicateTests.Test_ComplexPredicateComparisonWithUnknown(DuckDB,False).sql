-- DuckDB

SELECT
	COUNT(*)
FROM
	BooleanTable r
WHERE
	r.Value1 = 1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR
	r.Value4 IS NULL AND r.Value5 IS NULL

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <> r.Value4) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR
	r.Value4 IS NULL AND r.Value5 IS NULL

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER)))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <> r.Value2) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER)))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (((r.Value1 = r.Value4) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value4 IS NOT NULL AND r.Value5 IS NULL))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (((r.Value1 <> r.Value4) = ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value4 IS NOT NULL AND r.Value5 IS NULL))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value1 = r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value1 <> r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4) <> ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR
	r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <> r.Value4) <> ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR
	r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

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
		WHEN (r.Value1 = r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN False
		ELSE True
	END

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

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
		WHEN (r.Value1 <> r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN False
		ELSE True
	END

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (((r.Value1 = r.Value4) <> ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (((r.Value1 <> r.Value4) <> ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) = (r.Value5 + CAST($cnt AS INTEGER))) OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL))

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value1 = r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN False
		ELSE True
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value1 <> r.Value2) = ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) = (r.Value5 + CAST($cnt AS INTEGER)))
			THEN False
		ELSE True
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + CAST($cnt AS INTEGER)) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + CAST($cnt AS INTEGER)) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + CAST($cnt AS INTEGER)) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + CAST($cnt AS INTEGER)) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + CAST($cnt AS INTEGER)) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + CAST($cnt AS INTEGER)) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + CAST($cnt AS INTEGER)) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + CAST($cnt AS INTEGER)) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value4 + CAST($cnt AS INTEGER)) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value4 + CAST($cnt AS INTEGER)) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value4 + CAST($cnt AS INTEGER)) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value4 + CAST($cnt AS INTEGER)) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value2 + CAST($cnt AS INTEGER)) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value2 + CAST($cnt AS INTEGER)) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value2 + CAST($cnt AS INTEGER)) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- DuckDB
DECLARE $cnt  -- Int32
SET     $cnt = 18

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((1=1)) = (CASE
		WHEN (r.Value2 + CAST($cnt AS INTEGER)) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN True
		ELSE False
	END)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

