-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN Child ch ON CASE
			WHEN p.ParentID <> 2 THEN p.ParentID
			ELSE NULL
		END = ch.ParentID

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

