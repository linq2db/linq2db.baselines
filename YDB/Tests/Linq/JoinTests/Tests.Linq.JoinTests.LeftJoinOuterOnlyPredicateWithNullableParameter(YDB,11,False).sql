-- YDB Ydb
DECLARE $id Int32
SET     $id = 11

SELECT
	c_1.ChildID as ChildID,
	p.ParentID as ParentID
FROM
	Child c_1
		LEFT JOIN Parent p ON p.Value1 = CASE
			WHEN c_1.ChildID > $id THEN c_1.ParentID
			WHEN c_1.ParentID IS NULL THEN c_1.ParentID
			ELSE NULL
		END

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

