-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 111
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 222

SELECT
	a_Parent.ParentID as ParentID,
	a_Parent.Value1 as Value1,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID,
	t2.GrandChildID as GrandChildID
FROM
	Child ch
		LEFT JOIN Parent a_Parent ON ch.ParentID = a_Parent.ParentID
		LEFT JOIN (
			SELECT
				gc.ParentID as ParentID,
				gc.ChildID as ChildID,
				gc.GrandChildID as GrandChildID
			FROM
				GrandChild gc
					INNER JOIN (
						SELECT
							MAX(max_1.GrandChildID) as c1
						FROM
							GrandChild max_1
						GROUP BY
							max_1.ChildID
					) t1 ON gc.GrandChildID = t1.c1
		) t2 ON a_Parent.ParentID = t2.ParentID
WHERE
	t2.ParentID IS NULL OR (t2.GrandChildID NOT IN ($Ids0_1, $Ids0_2) OR t2.GrandChildID IS NULL)

