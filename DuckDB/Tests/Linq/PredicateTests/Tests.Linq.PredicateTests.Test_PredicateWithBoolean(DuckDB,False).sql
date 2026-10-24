-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	((r.Value5 = r.Value4 OR r.Value5 IS NULL AND r.Value4 IS NULL) AND NOT (r.Value5 IS NULL AND r.Value4 IS NOT NULL OR r.Value5 IS NOT NULL AND r.Value4 IS NULL)) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value2) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 > r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 > r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value2) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 >= r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 >= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value2) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 < r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 < r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) = $FalseN

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
WHERE
	1 = 0

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
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value2) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 <= r.Value4 AND r.Value4 IS NOT NULL) <> $FalseN

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

-- DuckDB
DECLARE $True  -- Boolean
SET     $True = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $True

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
DECLARE $TrueN  -- Boolean
SET     $TrueN = True

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $TrueN

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
DECLARE $False  -- Boolean
SET     $False = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $False

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
DECLARE $FalseN  -- Boolean
SET     $FalseN = False

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value5 <= r.Value4 AND r.Value5 IS NOT NULL AND r.Value4 IS NOT NULL) <> $FalseN

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

