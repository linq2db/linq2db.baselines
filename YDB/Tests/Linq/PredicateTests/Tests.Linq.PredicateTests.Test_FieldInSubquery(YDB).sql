-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value1 as Value1
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value2 IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value4 as Value4
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value2 IN (
		SELECT
			t1.Value4
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value1 as Value1
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value5 IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value4 as Value4
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value5 IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t1
		WHERE
			t1.Value4 IS NULL
	) OR
	r_1.Value5 IS NOT NULL AND r_1.Value5 IN (
		SELECT
			t2.Value4
		FROM
			$CTE_1 t2
		WHERE
			t2.Value4 IS NOT NULL
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value1 as Value1
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value2 NOT IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value4 as Value4
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value2 NOT IN (
		SELECT
			t1.Value4
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value1 as Value1
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	r_1.Value5 IS NULL OR r_1.Value5 NOT IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

-- YDB Ydb

$CTE_1 = 	SELECT
		r.Value4 as Value4
	FROM
		BooleanTable r
;

SELECT
	r_1.Id as Id,
	r_1.Value1 as Value1,
	r_1.Value2 as Value2,
	r_1.Value4 as Value4,
	r_1.Value5 as Value5
FROM
	BooleanTable r_1
WHERE
	NOT (r_1.Value5 IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t1
		WHERE
			t1.Value4 IS NULL
	) OR r_1.Value5 IS NOT NULL AND r_1.Value5 IN (
		SELECT
			t2.Value4
		FROM
			$CTE_1 t2
		WHERE
			t2.Value4 IS NOT NULL
	))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

