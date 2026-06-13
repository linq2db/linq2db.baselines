-- YDB Ydb

$CTE1_ = 	SELECT
		t1.ParentID as ParentID,
		t1.ChildID as ChildID
	FROM
		Child t1
;

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	$CTE1_ t2

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

