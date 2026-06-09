-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 111
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 222

SELECT
	p.ParentID as ParentID,
	gc3_1.not_null as not_null,
	gc3_1.ParentID as ParentID_1,
	gc3_1.ChildID as ChildID,
	gc3_1.GrandChildID as GrandChildID
FROM
	Child ch
		INNER JOIN Parent p ON ch.ParentID = p.ParentID
		LEFT JOIN (
			SELECT
				gc3.GrandChildID as GrandChildID,
				1 as not_null,
				gc3.ParentID as ParentID,
				gc3.ChildID as ChildID
			FROM
				GrandChild gc3
					INNER JOIN (
						SELECT
							MAX(max_1.GrandChildID) as c1
						FROM
							GrandChild max_1
						GROUP BY
							max_1.ChildID
					) t1 ON gc3.GrandChildID = t1.c1
		) gc3_1 ON p.ParentID = gc3_1.ParentID
WHERE
	gc3_1.not_null IS NULL OR (gc3_1.GrandChildID NOT IN ($Ids0_1, $Ids0_2) OR gc3_1.GrandChildID IS NULL)

