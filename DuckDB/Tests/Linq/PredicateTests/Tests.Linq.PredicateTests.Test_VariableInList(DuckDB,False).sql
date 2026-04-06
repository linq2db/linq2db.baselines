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
	CAST($One AS INTEGER) IN (0, 1)

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
	CAST($Zero AS INTEGER) IN (0, 1)

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
	CAST($OneN AS INTEGER) IN (0, 1)

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
	CAST($ZeroN AS INTEGER) IN (0, 1)

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
	CAST($Null AS INTEGER) IN (0, 1)

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
	(CAST($One AS INTEGER) IN (0, 1) OR CAST($One AS INTEGER) IS NULL)

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
	(CAST($Zero AS INTEGER) IN (0, 1) OR CAST($Zero AS INTEGER) IS NULL)

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
	(CAST($OneN AS INTEGER) IN (0, 1) OR CAST($OneN AS INTEGER) IS NULL)

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
	(CAST($ZeroN AS INTEGER) IN (0, 1) OR CAST($ZeroN AS INTEGER) IS NULL)

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
	(CAST($Null AS INTEGER) IN (0, 1) OR CAST($Null AS INTEGER) IS NULL)

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
	CAST($One AS INTEGER) NOT IN (0, 1)

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
	CAST($Zero AS INTEGER) NOT IN (0, 1)

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
	(CAST($OneN AS INTEGER) NOT IN (0, 1) OR CAST($OneN AS INTEGER) IS NULL)

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
	(CAST($ZeroN AS INTEGER) NOT IN (0, 1) OR CAST($ZeroN AS INTEGER) IS NULL)

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
	(CAST($Null AS INTEGER) NOT IN (0, 1) OR CAST($Null AS INTEGER) IS NULL)

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
	(CAST($One AS INTEGER) NOT IN (0, 1) AND CAST($One AS INTEGER) IS NOT NULL)

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
	(CAST($Zero AS INTEGER) NOT IN (0, 1) AND CAST($Zero AS INTEGER) IS NOT NULL)

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
	(CAST($OneN AS INTEGER) NOT IN (0, 1) AND CAST($OneN AS INTEGER) IS NOT NULL)

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
	(CAST($ZeroN AS INTEGER) NOT IN (0, 1) AND CAST($ZeroN AS INTEGER) IS NOT NULL)

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
	(CAST($Null AS INTEGER) NOT IN (0, 1) AND CAST($Null AS INTEGER) IS NOT NULL)

-- DuckDB

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

