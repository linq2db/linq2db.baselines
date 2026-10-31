-- YDB Ydb
SELECT
	p.ParentID as ParentID,
	ch.ChildID as ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID
			FROM
				Child c_1
			WHERE
				1 = 0
		) ch ON p.ParentID = ch.ParentID

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

