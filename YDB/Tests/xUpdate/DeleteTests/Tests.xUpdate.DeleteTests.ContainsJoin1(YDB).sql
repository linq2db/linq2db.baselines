-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1000
DECLARE $Value1 Int32
SET     $Value1 = NULL

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$ParentID,
	$Value1
)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1000
DECLARE $ChildID Int32
SET     $ChildID = 1000

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	$ParentID,
	$ChildID
)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1000
DECLARE $ChildID Int32
SET     $ChildID = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	$ParentID,
	$ChildID
)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1000
DECLARE $ChildID Int32
SET     $ChildID = 1002

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	$ParentID,
	$ChildID
)

