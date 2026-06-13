-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	r.Value2 IN ($Ids0_1, $Ids0_2)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 IN ($Ids0_1, $Ids0_2) OR r.Value2 IS NULL)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	r.Value5 IN ($Ids0_1, $Ids0_2)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 IN ($Ids0_1, $Ids0_2) OR r.Value5 IS NULL)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	r.Value2 NOT IN ($Ids0_1, $Ids0_2)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value2 NOT IN ($Ids0_1, $Ids0_2) AND r.Value2 IS NOT NULL)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 NOT IN ($Ids0_1, $Ids0_2) OR r.Value5 IS NULL)

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
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 NOT IN ($Ids0_1, $Ids0_2) AND r.Value5 IS NOT NULL)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

