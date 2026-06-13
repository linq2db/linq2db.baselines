-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	BooleanTable r
WHERE
	r.Value1 = 1

-- YDB Ydb
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 = r_1.Value4) = ($CTE_1 = (r_1.Value5 + $cnt)) OR
	r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 <> r_1.Value4) = ($CTE_1 = (r_1.Value5 + $cnt)) OR
	r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 = r_1.Value2) = ($CTE_1 = (r_1.Value5 + $cnt))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 <> r_1.Value2) = ($CTE_1 = (r_1.Value5 + $cnt))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = (((r_1.Value1 = r_1.Value4) = ($CTE_1 = (r_1.Value5 + $cnt)) OR r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = (((r_1.Value1 <> r_1.Value4) = ($CTE_1 = (r_1.Value5 + $cnt)) OR r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value1 = r_1.Value2) = ($CTE_1 = (r_1.Value5 + $cnt)) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value1 <> r_1.Value2) = ($CTE_1 = (r_1.Value5 + $cnt)) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 = r_1.Value4) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR
	r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL) OR
	r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 <> r_1.Value4) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR
	r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL) OR
	r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 = r_1.Value2) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR
	$CTE_1 IS NULL OR r_1.Value5 IS NULL

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value1 <> r_1.Value2) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR
	$CTE_1 IS NULL OR r_1.Value5 IS NULL

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = (((r_1.Value1 = r_1.Value4) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL) OR r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = (((r_1.Value1 <> r_1.Value4) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR r_1.Value4 IS NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL) OR r_1.Value4 IS NOT NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)) AND NOT (r_1.Value4 IS NULL AND ($CTE_1 IS NULL OR r_1.Value5 IS NULL)))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value1 = r_1.Value2) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR $CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value1 <> r_1.Value2) <> ($CTE_1 = (r_1.Value5 + $cnt)) OR $CTE_1 IS NULL OR r_1.Value5 IS NULL)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value4 + $cnt) >= ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value4 + $cnt) > ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value4 + $cnt) <= ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value4 + $cnt) < ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value2 + $cnt) >= ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value2 + $cnt) > ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value2 + $cnt) <= ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	(r_1.Value2 + $cnt) < ($CTE_1 + r_1.Value5)

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value4 + $cnt) >= ($CTE_1 + r_1.Value5) AND r_1.Value4 IS NOT NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value4 + $cnt) > ($CTE_1 + r_1.Value5) AND r_1.Value4 IS NOT NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value4 + $cnt) <= ($CTE_1 + r_1.Value5) AND r_1.Value4 IS NOT NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value4 + $cnt) < ($CTE_1 + r_1.Value5) AND r_1.Value4 IS NOT NULL AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value2 + $cnt) >= ($CTE_1 + r_1.Value5) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value2 + $cnt) > ($CTE_1 + r_1.Value5) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value2 + $cnt) <= ($CTE_1 + r_1.Value5) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

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
DECLARE $cnt Int32
SET     $cnt = 18

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		BooleanTable r
	WHERE
		r.Value1 = 1
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
	((1=1)) = ((r_1.Value2 + $cnt) < ($CTE_1 + r_1.Value5) AND NOT ($CTE_1 IS NULL OR r_1.Value5 IS NULL))

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value4 as Value4,
	t1.Value5 as Value5
FROM
	BooleanTable t1

