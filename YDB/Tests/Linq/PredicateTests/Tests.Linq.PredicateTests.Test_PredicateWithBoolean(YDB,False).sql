-- YDB Ydb
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	1 = 0

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

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
DECLARE $True Bool -- Boolean
SET     $True = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN Bool -- Boolean
SET     $TrueN = true

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False Bool -- Boolean
SET     $False = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN Bool -- Boolean
SET     $FalseN = false

SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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
SELECT
	r.Id as Id,
	r.Value1 as Value1,
	r.Value2 as Value2,
	r.Value4 as Value4,
	r.Value5 as Value5
FROM
	BooleanTable r

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

