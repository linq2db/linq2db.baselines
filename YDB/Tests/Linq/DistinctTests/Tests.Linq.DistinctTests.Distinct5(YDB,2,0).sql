-- YDB Ydb
DECLARE $Value1 Int32
SET     $Value1 = 3

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2) as ParentID,
	$Value1 as Value1
FROM
	Parent p

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
DECLARE $Value1 Int32
SET     $Value1 = 3

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID % 2) as ParentID,
	$Value1 as Value1
FROM
	Parent p

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

