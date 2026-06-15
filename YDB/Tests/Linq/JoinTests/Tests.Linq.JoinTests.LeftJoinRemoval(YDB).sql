-- YDB Ydb

SELECT
	ch1.ParentID as ParentID,
	ch1.ChildID as ChildID
FROM
	Parent t1
		INNER JOIN Child ch ON t1.ParentID = ch.ParentID
		INNER JOIN Child ch1 ON ch.ChildID = ch1.ChildID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

