-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 111
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 222

SELECT
	p.ParentID as ParentID,
	t2.ParentID as ParentID_1,
	t2.ChildID as ChildID,
	t2.GrandChildID as GrandChildID
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
		) t2 ON p.ParentID = t2.ParentID
WHERE
	t2.ParentID IS NULL OR (t2.GrandChildID NOT IN ($Ids0_1, $Ids0_2) OR t2.GrandChildID IS NULL)

