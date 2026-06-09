-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

INSERT ASYNC BULK Parent(ParentID, Value1)

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1000
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1001

DELETE FROM
	Parent
WHERE
	Parent.ParentID IN ($Ids0_1, $Ids0_2)

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

