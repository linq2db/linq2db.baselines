-- DuckDB
DECLARE $One  -- Int32
SET     $One = 1

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($One AS INTEGER) IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $Zero  -- Int32
SET     $Zero = 0

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($Zero AS INTEGER) IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $OneN  -- Int32
SET     $OneN = 1

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($OneN AS INTEGER) IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $ZeroN  -- Int32
SET     $ZeroN = 0

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($ZeroN AS INTEGER) IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $Null  -- Object
SET     $Null = NULL

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($Null AS INTEGER) IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $One  -- Int32
SET     $One = 1

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($One AS INTEGER) NOT IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $Zero  -- Int32
SET     $Zero = 0

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($Zero AS INTEGER) NOT IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $OneN  -- Int32
SET     $OneN = 1

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($OneN AS INTEGER) NOT IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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
DECLARE $ZeroN  -- Int32
SET     $ZeroN = 0

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	CAST($ZeroN AS INTEGER) NOT IN (
		SELECT
			s.Value1
		FROM
			BooleanTable s
		WHERE
			s.Id > r.Id
	)

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

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

