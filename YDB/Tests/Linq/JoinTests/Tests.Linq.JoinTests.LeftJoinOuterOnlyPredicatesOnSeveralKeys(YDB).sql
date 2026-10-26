-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	ch.ChildID as ChildID,
	gc.GrandChildID as GrandChildID
FROM
	Parent p
		INNER JOIN Child ch ON p.ParentID = ch.ParentID
		LEFT JOIN GrandChild gc ON CASE
			WHEN p.Value1 <> 1 OR p.Value1 IS NULL THEN p.ParentID
			ELSE NULL
		END = gc.ParentID AND CASE
			WHEN ch.ChildID <> 21 THEN ch.ChildID
			ELSE NULL
		END = gc.ChildID

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

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	GrandChild t1

