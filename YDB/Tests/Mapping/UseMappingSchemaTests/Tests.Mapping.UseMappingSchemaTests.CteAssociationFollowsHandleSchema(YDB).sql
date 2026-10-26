-- YDB Ydb
$CTE_1 = 	SELECT
		t1.ChildID as ChildID,
		t1.ParentID as ParentID
	FROM
		Child t1
;

SELECT
	t2.ChildID as ChildID,
	a_Parent.Value1 as Value1
FROM
	$CTE_1 t2
		LEFT JOIN Parent a_Parent ON t2.ParentID = a_Parent.ParentID
ORDER BY
	t2.ChildID

