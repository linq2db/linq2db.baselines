-- YDB Ydb
DECLARE $var3 Int32
SET     $var3 = 1

$CTE_1 = 	SELECT
		t1.ChildID as ChildID,
		t1.ParentID as ParentID
	FROM
		Child t1
;

SELECT
	t.ParentID as ParentID,
	t.ChildID as ChildID
FROM
	$CTE_1 t
WHERE
	t.ChildID = $var3

