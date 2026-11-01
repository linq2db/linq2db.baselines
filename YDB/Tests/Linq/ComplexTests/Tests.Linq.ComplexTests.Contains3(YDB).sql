-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 111
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 222

SELECT
	p.ParentID as ParentID,
	gc_1.ParentID as ParentID_1,
	gc_1.ChildID as ChildID,
	gc_1.GrandChildID as GrandChildID
FROM
	Child ch
		INNER JOIN Parent p ON ch.ParentID = p.ParentID
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
		) gc_1 ON p.ParentID = gc_1.ParentID
WHERE
	gc_1.ParentID IS NULL OR (gc_1.GrandChildID NOT IN ($Ids0_1, $Ids0_2) OR gc_1.GrandChildID IS NULL)

