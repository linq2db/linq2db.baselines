-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 11
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 21
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 22
DECLARE $Ids0_4 Int32
SET     $Ids0_4 = 31
DECLARE $Ids0_5 Int32
SET     $Ids0_5 = 32
DECLARE $Ids0_6 Int32
SET     $Ids0_6 = 33
DECLARE $Ids0_7 Int32
SET     $Ids0_7 = 41
DECLARE $Ids0_8 Int32
SET     $Ids0_8 = 42
DECLARE $Ids0_9 Int32
SET     $Ids0_9 = 43
DECLARE $Ids0_10 Int32
SET     $Ids0_10 = 44
DECLARE $Ids0_11 Int32
SET     $Ids0_11 = 61
DECLARE $Ids0_12 Int32
SET     $Ids0_12 = 62
DECLARE $Ids0_13 Int32
SET     $Ids0_13 = 63
DECLARE $Ids0_14 Int32
SET     $Ids0_14 = 64
DECLARE $Ids0_15 Int32
SET     $Ids0_15 = 65
DECLARE $Ids0_16 Int32
SET     $Ids0_16 = 66
DECLARE $Ids0_17 Int32
SET     $Ids0_17 = 77

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
	WHERE
		c_1.ChildID IN ($Ids0_1, $Ids0_2, $Ids0_3, $Ids0_4, $Ids0_5, $Ids0_6, $Ids0_7, $Ids0_8, $Ids0_9, $Ids0_10, $Ids0_11, $Ids0_12, $Ids0_13, $Ids0_14, $Ids0_15, $Ids0_16, $Ids0_17)
;

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

