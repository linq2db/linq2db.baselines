-- YDB Ydb
SELECT
	t3.GrandChildID as GrandChildID,
	t2.ChildID as ChildID,
	t2.ParentID as ParentID
FROM
	(
		SELECT DISTINCT
			gc.ParentID as ParentID,
			gc.ChildID as ChildID,
			gc.GrandChildID as GrandChildID,
			t1.ParentID as ParentID_1,
			t1.ChildID as ChildID_1,
			t1.ParentID_1 as ParentID_2,
			t1.Value1 as Value1
		FROM
			GrandChild gc
				LEFT JOIN (
					SELECT
						a_Child.ParentID as ParentID,
						a_Child.ChildID as ChildID,
						a_Parent.ParentID as ParentID_1,
						a_Parent.Value1 as Value1
					FROM
						Child a_Child
							LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
				) t1 ON gc.ParentID = t1.ParentID AND gc.ChildID = t1.ChildID
	) t3
		LEFT JOIN (
			SELECT
				a_Parent_1.ParentID as ParentID,
				a_Child_1.ChildID as ChildID,
				a_Child_1.ParentID as ParentID_1
			FROM
				Child a_Child_1
					LEFT JOIN Parent a_Parent_1 ON a_Child_1.ParentID = a_Parent_1.ParentID
		) t2 ON t3.ParentID = t2.ParentID_1 AND t3.ChildID = t2.ChildID
WHERE
	t2.ParentID > 0
ORDER BY
	t3.GrandChildID

-- YDB Ydb
SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID,
	t2.GrandChildID as GrandChildID,
	t1.ParentID_1 as ParentID_1,
	t1.ChildID as ChildID_1,
	t1.ParentID as ParentID_2,
	t1.Value1 as Value1
FROM
	GrandChild t2
		LEFT JOIN (
			SELECT
				a_Parent.ParentID as ParentID,
				a_Parent.Value1 as Value1,
				a_Child.ParentID as ParentID_1,
				a_Child.ChildID as ChildID
			FROM
				Child a_Child
					LEFT JOIN Parent a_Parent ON a_Child.ParentID = a_Parent.ParentID
		) t1 ON t2.ParentID = t1.ParentID_1 AND t2.ChildID = t1.ChildID

