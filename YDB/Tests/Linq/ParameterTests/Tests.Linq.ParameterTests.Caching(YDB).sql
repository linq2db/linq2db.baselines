-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = $p

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3
DECLARE $p_1 Int32
SET     $p_1 = 2

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = $p OR x.ParentID = $p_1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 1

SELECT
	x.ParentID as ParentID,
	x.Value1 as Value1
FROM
	Parent x
WHERE
	x.ParentID = $p OR x.ParentID = $p_1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

