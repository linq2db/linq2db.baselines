-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID IN ($Ids0_1, $Ids0_2)

