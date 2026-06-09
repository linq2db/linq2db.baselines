-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ParentID > 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1001
DECLARE $Value1 Int32
SET     $Value1 = 1001

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
DECLARE $id Int32
SET     $id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	p.ParentID as ParentID,
	p.ParentID as ChildID
FROM
	Parent p
WHERE
	p.ParentID = $id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1001

SELECT
	COUNT(*) as Count_1
FROM
	Child c_1
WHERE
	c_1.ParentID = $id

-- YDB Ydb

DELETE FROM
	Child
WHERE
	Child.ParentID > 1000

-- YDB Ydb

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

