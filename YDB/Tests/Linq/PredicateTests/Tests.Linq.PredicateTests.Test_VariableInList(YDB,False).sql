-- YDB Ydb
DECLARE $One Int32
SET     $One = 1
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
	$One IN ($Ids0_1, $Ids0_2)

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
DECLARE $Zero Int32
SET     $Zero = 0
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
	$Zero IN ($Ids0_1, $Ids0_2)

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
DECLARE $OneN Int32
SET     $OneN = 1
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
	$OneN IN ($Ids0_1, $Ids0_2)

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
DECLARE $ZeroN Int32
SET     $ZeroN = 0
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
	$ZeroN IN ($Ids0_1, $Ids0_2)

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
DECLARE $Null Int32
SET     $Null = NULL
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
	$Null IN ($Ids0_1, $Ids0_2)

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
DECLARE $One Int32
SET     $One = 1
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
	($One IN ($Ids0_1, $Ids0_2) OR $One IS NULL)

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
DECLARE $Zero Int32
SET     $Zero = 0
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
	($Zero IN ($Ids0_1, $Ids0_2) OR $Zero IS NULL)

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
DECLARE $OneN Int32
SET     $OneN = 1
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
	($OneN IN ($Ids0_1, $Ids0_2) OR $OneN IS NULL)

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
DECLARE $ZeroN Int32
SET     $ZeroN = 0
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
	($ZeroN IN ($Ids0_1, $Ids0_2) OR $ZeroN IS NULL)

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
DECLARE $Null Int32
SET     $Null = NULL
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
	($Null IN ($Ids0_1, $Ids0_2) OR $Null IS NULL)

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
DECLARE $One Int32
SET     $One = 1
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
	$One NOT IN ($Ids0_1, $Ids0_2)

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
DECLARE $Zero Int32
SET     $Zero = 0
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
	$Zero NOT IN ($Ids0_1, $Ids0_2)

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
DECLARE $OneN Int32
SET     $OneN = 1
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
	($OneN NOT IN ($Ids0_1, $Ids0_2) OR $OneN IS NULL)

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
DECLARE $ZeroN Int32
SET     $ZeroN = 0
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
	($ZeroN NOT IN ($Ids0_1, $Ids0_2) OR $ZeroN IS NULL)

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
DECLARE $Null Int32
SET     $Null = NULL
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
	($Null NOT IN ($Ids0_1, $Ids0_2) OR $Null IS NULL)

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
DECLARE $One Int32
SET     $One = 1
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
	($One NOT IN ($Ids0_1, $Ids0_2) AND $One IS NOT NULL)

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
DECLARE $Zero Int32
SET     $Zero = 0
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
	($Zero NOT IN ($Ids0_1, $Ids0_2) AND $Zero IS NOT NULL)

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
DECLARE $OneN Int32
SET     $OneN = 1
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
	($OneN NOT IN ($Ids0_1, $Ids0_2) AND $OneN IS NOT NULL)

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
DECLARE $ZeroN Int32
SET     $ZeroN = 0
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
	($ZeroN NOT IN ($Ids0_1, $Ids0_2) AND $ZeroN IS NOT NULL)

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
DECLARE $Null Int32
SET     $Null = NULL
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
	($Null NOT IN ($Ids0_1, $Ids0_2) AND $Null IS NOT NULL)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

