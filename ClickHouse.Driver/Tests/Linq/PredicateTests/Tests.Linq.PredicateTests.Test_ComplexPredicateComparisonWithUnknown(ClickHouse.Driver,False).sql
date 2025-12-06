-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	BooleanTable r
WHERE
	r.Value1 = 1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR
	r.Value4 IS NULL AND r.Value5 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR
	r.Value4 IS NULL AND r.Value5 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value4 IS NOT NULL AND r.Value5 IS NULL))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR r.Value4 IS NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NOT NULL) AND NOT (r.Value4 IS NOT NULL AND r.Value5 IS NULL))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR
	r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR
	r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN false
		ELSE true
	END

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN false
		ELSE true
	END

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
	) = (r.Value5 + 18)) OR r.Value4 IS NULL AND r.Value5 IS NOT NULL OR r.Value4 IS NOT NULL AND r.Value5 IS NULL) AND NOT (r.Value4 IS NULL AND r.Value5 IS NULL))

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN false
		ELSE true
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		) = (r.Value5 + 18))
			THEN false
		ELSE true
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + 18) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + 18) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + 18) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value4 + 18) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + 18) >= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + 18) > ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + 18) <= ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 + 18) < ((
		SELECT
			COUNT(*)
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value1 = 1
	) + r.Value5)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value4 + 18) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value4 + 18) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value4 + 18) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value4 + 18) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value2 + 18) >= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value2 + 18) > ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value2 + 18) <= ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

-- ClickHouse.Driver ClickHouse

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
		WHEN (r.Value2 + 18) < ((
			SELECT
				COUNT(*)
			FROM
				BooleanTable r_1
			WHERE
				r_1.Value1 = 1
		) + r.Value5)
			THEN true
		ELSE false
	END)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

