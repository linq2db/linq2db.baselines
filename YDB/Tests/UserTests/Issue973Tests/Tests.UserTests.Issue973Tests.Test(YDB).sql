-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 2
DECLARE $p_2 Int32
SET     $p_2 = 3
DECLARE $param Int32
SET     $param = 4

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1
FROM
	Parent o
WHERE
	o.ParentID IN ($p, $p_1, $p_2) OR o.ParentID = $param

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 3
DECLARE $param Int32
SET     $param = 4

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1
FROM
	Parent o
WHERE
	(o.ParentID IN ($Ids0_1, $Ids0_2, $Ids0_3) OR o.ParentID IS NULL) OR
	o.ParentID = $param

-- YDB Ydb
DECLARE $p Int32
SET     $p = 4
DECLARE $p_1 Int32
SET     $p_1 = 5
DECLARE $p_2 Int32
SET     $p_2 = 6
DECLARE $param Int32
SET     $param = 4

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1
FROM
	Parent o
WHERE
	o.ParentID IN ($p, $p_1, $p_2) OR o.ParentID = $param

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 4
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 5
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 6
DECLARE $param Int32
SET     $param = 4

SELECT
	o.ParentID as ParentID,
	o.Value1 as Value1
FROM
	Parent o
WHERE
	(o.ParentID IN ($Ids0_1, $Ids0_2, $Ids0_3) OR o.ParentID IS NULL) OR
	o.ParentID = $param

