-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 2111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 3111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 4111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

INSERT ASYNC BULK Parent(ParentID, Value1)

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 1111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 2111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 3111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

-- YDB Ydb
DECLARE $ParentID Int32
SET     $ParentID = 4111

DELETE FROM
	Parent
WHERE
	Parent.ParentID = $ParentID

