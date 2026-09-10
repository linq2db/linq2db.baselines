-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

$CTE_1 = 	SELECT
		t1.ParentID as ParentID
	FROM
		Parent t1
	WHERE
		t1.ParentID = $id
;

SELECT
	t2.ParentID as ParentID,
	t2.ChildID as ChildID
FROM
	Child t2
WHERE
	t2.ParentID IN (
		SELECT
			t3.ParentID
		FROM
			$CTE_1 t3
	) AND
	t2.ChildID >= 0 AND t2.ChildID <= 100

