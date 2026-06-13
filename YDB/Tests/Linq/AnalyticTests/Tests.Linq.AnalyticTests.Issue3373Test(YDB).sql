-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 3

SELECT
	SUM(CASE
		WHEN t.ParentID IN ($Ids0_1) THEN t.ChildID
		ELSE 0
	END) OVER(PARTITION BY a_Parent.Value1 ORDER BY t.ParentID) as Sum_1
FROM
	Child t
		LEFT JOIN Parent a_Parent ON t.ParentID = a_Parent.ParentID

